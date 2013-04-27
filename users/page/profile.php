<?php
class page_profile extends Page {
	function init(){
		parent::init();

		// Define Tabs
		$tabs=$this->add('Tabs');
		$profile_tab = $tabs->addTab('Profile');
		$update_tab=$tabs->addTab('Update ID');


		// PROFILE TAB MATTER AND FORM HANDING
		$form= $profile_tab->add('Form');
		$m=$this->add("Model_Distributor");
		$m->load($this->api->auth->model->id);
		$form->setModel($m,array('Father_HusbandName','Gender','Dob','PanNo',
											'Address','City','State','Country','MobileNo',
											'Nominee','RelationwithNominee','NomineeDob',
											'Bank','IFSC','AccountNumber','Password'));
		$form->addField('password','repassword','Re Type Password');
		$form->addSubmit("Update");


		if($form->isSubmitted()){
			if($form->get('Password')!=$form->get('repassword'))
				$form->displayError("repassword","Password must Match");
			
			$form->update();

			$form->js(null,array(
					$form->js()->univ()->successMessage("Information Updated"),
					$form->js()->reload()
				))->execute();
		}

		// UPDATE ID FORM AND HANDLING
		$update_form = $update_tab->add('Form');
		$update_form->addField('line','pin')->validateNotNull();
		$update_form->addSubmit('Update ID');

		if($update_form->isSubmitted()){
			$pin=$this->add('Model_Pin');
			$pin->tryLoadBy('Pin',$update_form->get('pin'));
			if(!$pin->validatePin()) $update_form->displayError('pin','This pin is either wrong, used or not activated');
			$dist=$this->add("Model_Distributor");
			$dist->load($this->api->auth->model->id);
			/*	

				Transaction begin
				Mark pin used
				update distributors pv/bv etc
				update ancesstors
				update greendate
				update treedetails updated_at if effective

			*/

			$update_form->js()->reload()->execute();
		}

	}
}