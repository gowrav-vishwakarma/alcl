<?php
class page_newregistration extends Page {
	function init(){
		parent::init();
	
		$form=$this->add('Form');
		$form->addField('Radio','registration_type')->setValueList(array("free"=>'Free Registration',"paid"=>'Paid Registration'))->set('paid');
		if($_GET['registration_type']=="free"){
			$form->getElement('registration_type')->set('free');
		}
		$form->setModel('Distributor',array(
							'sponsor_id',
							'introducer_id',
							'fullname',
							'Father_HusbandName',
							'Mother_Name',
							'Dob',
							'Password',
							'Retype_password',
							'MobileNo',
							'Address',
							'City',
							'State',
							'PinCode',
							'EmailID',
							'Nominee',
							'RelationWithNominee',
							'PanNo',
							'Bank',
							'IFSC',
							'AccountNumber'));
		if($_GET['sponsor']){
			$ref_sponsor=$this->add('Model_Distributor')->tryLoadBy('username',$_GET['sponsor']);
			if($ref_sponsor->loaded()){
				$form->getElement('sponsor_id')->set($ref_sponsor->id);
				$form->getElement('introducer_id')->set($ref_sponsor->id);
			}
		}
		$form->addField('dropdown','leg')->setValueList(array(
												"-1"=>"select leg",
												"A"=>"A",
												"B"=>"B"))->set('-1');
		if($_GET['leg']){
			$form->getElement('leg')->set($_GET['leg']);
		}
		$form->addField('password','re_password');
		$form->add('Order')->move('leg','after','sponsor')->move('re_password','after','Password')->now();
		$form->addField('line','username','Distributor Username')->validateField(
		        '!eregi("[^a-z0-9_]", $this->get())'
	        )->setFieldHint("Only Aplhabets(a-z), Numbers(0-9) and Underscore '_' allowed. Username must be at least 3 character long.");

		$form->addField('line','pin')->setFieldHint("Leave blank in case of Free Joining");
		$form->addSubmit('Submit');


		if($form->isSubmitted()){
			// Check for new joining stopped or not
			$admin=$this->add('Model_Admin');
			if($admin->getValue('NewJoinings') != 'Start')
				$form->js()->univ()->errorMessage("New Joining is stopped by Administrator")->execute();

			if($form->get('leg')=='-1') $form->displayError('leg','Please select any valid leg');


			// CHECKING FOR existing username and username length
			if(strlen($form->get('username')) <=3 ) $form->displayError('username','Username must be at least 3 character long');
			$user=$this->add('Model_Distributor')->tryLoadBy('username',$form->get('username'));
			if($user->loaded()) $form->displayError('username',"Sorry, This Username is already taken, choose differetn one");


			// Sponsor checkings for already filled leg
			$sponsor=$this->add('Model_Distributor');
			$sponsor->tryLoad($form->get('sponsor_id'));

			if(!$sponsor->loaded()) $form->displayError('sponsor_id','Sponsor not Found');

			$sponsor_leg=$sponsor->ref('Leg');
			$sponsor_leg->addCondition('Leg',$form->get('leg'));
			$sponsor_leg->tryLoadAny();

			if($form->get('registration_type') == 'paid'){
				if($sponsor_leg->loaded()) $form->displayError('leg','This leg is already filled, try another');
			}else{
				if($sponsor_leg->loaded()){
					// Get the last node in the given leg
					$opp_leg=($form->get('leg')=='A')? 'B':'A';
					$sponsor_path_length=strlen($sponsor['Path'])+1;

					$new_sponsor = $this->add('Model_Distributor');
					$new_sponsor->addExpression('path_length')->set('LENGTH(Path)');
					$new_sponsor->addExpression('tmp')->set("LOCATE('$opp_leg',Path,$sponsor_path_length)");

					$new_sponsor->addCondition('Path', 'like',$sponsor['Path']. $form->get('leg').'%');
					$new_sponsor->addCondition('tmp', 0);
					
					$new_sponsor->setOrder('path_length','DESC');
					$new_sponsor->tryLoadAny();

					$form->set('sponsor_id', $new_sponsor->id);
					// $form->displayError('leg','Sponsor leg needs traversing '. $new_sponsor['name']. " ". $new_sponsor['path_length']);
				}
			}

			if($form->get('Password') != $form->get('re_password'))
				$form->displayError('re_password','Both Passwords must be same');

			// check pins
			if($form->get('registration_type')=='paid'){
				$pin=$this->add('Model_Pin');
				$pin->tryLoadBy('Pin',$form->get('pin'));
				if(!$pin->loaded() OR $pin['Pin'] != strtolower($form->get('pin')) OR $pin['Used']==true OR $pin['published']==false)
					$form->displayError('pin','Pin Validation failed or This is a Used pin or Not Activated Pin');
			}else{
				// JUST USE PIN NO 1 as YFOC PIN FOR FREE JOINING
				$pin=$this->add('Model_Pin');
				$pin->load(1);
			}

			// +++ below is not just randome line .. used to get current users pos when not logged in from POS Staff and using common functions for sale...
			// So temporarily say pin's pos is the pos from whre the transactions are happening.
			$this->api->auth->model['pos_id'] = $pin['pos_id'];

			$form->model->memorize('leg',$form->get('leg'));
			$form->model->memorize('new_entry',true);
			// $form->model['id'] =  $form->get('new_id');
			$form->model['username']=$form->get('username');
			$form->model['pin_id']=$pin->id;
			try{
				$this->api->db->beginTransaction();
					$form->update();
			}catch(Exception $e){
				$this->api->db->rollback();
				throw $e;
				$form->js()->univ()->errorMessage($e->getMessage())->execute();
			}

			$this->api->db->commit();

			$form->js(null,$form->js()->reload())->univ()->successMessage('Member Registred SucessFully')->execute();

		}
	}
}