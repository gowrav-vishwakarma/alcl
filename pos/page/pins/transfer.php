<?php
class page_pins_transfer extends Page {
	function init(){
		parent::init();
		$form=$this->add('Form');
		$form->addField('line','no_of_pins')->validateNotNull();
		$form->addField('dropdown','kit')->setEmptyText("Select kit")->validateNotNull("Select a kit first")->setModel('Kit');

		$form->addField('autocomplete/basic','depot')
			->setOptions(array('minLength'=>3))
			->mustMatch()
			->validateNotNull()
			->setModel('Depot');

		$form->addSubmit('TRansfer Pins');

		if($form->isSubmitted()){
			$pin=$this->add('Model_Pin');
			try{
				$this->api->db->beginTransaction();
				$pin->transfer(null,$form->get('depot'),$form->get('no_of_pins'),$form->get('kit'));

				$pintransaction=$this->add('Model_PinTransaction');
				$pintransaction['From_id']=$this->api->auth->model['pos_id'];
				$pintransaction['To_id']=$form->get('depot');
				$pintransaction['Qty']=$form->get('no_of_pins');
				$pintransaction['kit_id']=$form->get('kit');
				$pintransaction['Narration']= $form->get('no_of_pins') . ' Pin(s) Transfered to Depot '. $form->get('depot');
				$pintransaction['Transaction_Type']='PinTransfered';
				$pintransaction->save();
			}catch(Exception $e){
				$this->api->db->rollback();
				throw $e;
				$form->js()->univ()->errorMessage($e->getMessage())->execute();
			}
			$this->api->db->commit();
			$form->js(null, $form->js()->reload())->univ()->successMessage("Pins Transfered")->execute();

		}
	}
}