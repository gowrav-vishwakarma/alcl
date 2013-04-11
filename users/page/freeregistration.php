<?php
class page_freeregistration extends Page {
	function init(){
		parent::init();
		
		$form=$this->add('Form');
		$form->setModel('Distributor',array(
								'sponsor_id',
								'introducer_id',
								'fullname',
							'Father_HusbandName',
							'Dob',
							'Password',
							'Retype_password',
							'MobileNo',
							'Address',
							'City',
							'State',
							'PinCode',
							'Nominee',
							'RelationWithNominee',
							'PanNo',
							'Bank',
							'IFSC',
							'AccountNumber'));
		// $form->addField('dropdown','leg')->setValueList(array(
		// 										"-1"=>"select leg",
		// 										"A"=>"A",
		// 										"B"=>"B"))->set('-1');
		// $form->add('Order')->move('leg','after','sponsor')->now();
		// $form->addField('line','new_id','Distributor ID');
		// $form->addField('line','pin');
		$form->addField('hidden','is_free_entry')->set(1);
		$form->addSubmit('Submit');

		if($form->isSubmitted()){

			// Check for new joining stopped or not
			$admin=$this->add('Model_Admin');
			if($admin->getValue('NewJoinings') != 'Start')
				$form->js()->univ()->errorMessage("New Joining is stopped by Administrator")->execute();

			// if($form->get('leg')=='-1') $form->displayError('leg','Please select any valid leg');


			// Sponsor checkings for already filled leg
			$sponsor=$this->add('Model_Distributor');
			$introducer=$this->add('Model_Distributor');

			if($form->get('is_free_entry')){
				$sponsor->tryLoad($form->get('sponsor_id'));
				$introducer->tryLoad($form->get('introducer_id'));
			}
			else{
				$sponsor->load($form->get('sponsor_id'));
				$introducer->load($form->get('introducer_id'));
			}

			if(!$sponsor->loaded()){
				// GET THE MOST LEFT DOWN ID AS SPONSOR
				$sponsor=$this->add('Model_Distributor');
				$sponsor->addExpression('path_length')->set('LENGTH(Path)');
				$sponsor->addCondition('Path','not like','%B%');
				$sponsor->setOrder('path_length');
				$sponsor->tryLoadAny();
			}

			if(!$introducer->loaded()){
				$introducer->load(1);
			}

			// $sponsor_leg=$sponsor->ref('Leg');
			// $sponsor_leg->addCondition('Leg',$form->get('leg'));
			// $sponsor_leg->tryLoadAny();
			// if($sponsor_leg->loaded()) $form->displayError('leg','This leg is already filled, try another');

			// check pins
			// $pin=$this->add('Model_Pin');
			// $pin->tryLoad($form->get('new_id'));
			// if(!$pin->loaded() OR $pin['Pin'] != strtolower($form->get('pin')) OR $pin['Used']==true OR $pin['published']==false)
				// $form->displayError('pin','Pin Validation failed or This is a Used pin or Not Activated Pin');

			// $this->api->auth->model['pos_id'] = $pin['pos_id'];
			$form->set('sponsor_id',$sponsor->id);
			$form->set('introducer_id',$introducer->id);
			$form->model->memorize('leg','A');
			$form->model->memorize('new_entry',true);
			// $form->model['id'] =  $form->get('new_id');
			// $form->model['pin_id']=$form->get('new_id');
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