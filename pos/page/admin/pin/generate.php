<?php
class page_admin_pin_generate extends page_admin{
	function init(){
		parent::init();

		$form=$this->add('Form');
		$form->addField('line','no_of_pins')->validateNotNull();
		// $form->addField('autocomplete/basic','pos_id')
		// ->setOptions(array('minLength'=>3))
		// ->mustMatch()
		// ->setNotNull("oops")
		// ->setModel('Distributor');
		$form->addField('dropdown','kit_id')->setEmptyText('Select Kit')->validateNotNull()->setModel('Kit');

		$form->addSubmit("Generate");

		if($form->isSubmitted()){
			$p=$this->add('Model_Pin');
			$k=$this->add('Model_Kit')->load($form->get('kit_id'));

			for($i=1; $i<=$form->get('no_of_pins') ;$i++){
				$p->generateAndSave($k->id,$k['BV'],$k['PV'],$k['RP'],1);
			}

			$pintransaction=$this->add('Model_PinTransaction');
			$pintransaction['Fromdistributor_id']=1;
			$pintransaction['Todistributor_id']=1;
			$pintransaction['Narration']= $form->get('no_of_pins') . ' Pin(s) Ganrated for ' . $k['name'];
			$pintransaction['Transaction_Type']='PinGeneration';
			$pintransaction->save();

			$form->js(null,$form->js()->reload())->univ()->successMessage('Generated')->execute();
		}

	}
}