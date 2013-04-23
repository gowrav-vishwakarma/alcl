<?php
class page_pins_distributorsales extends Page {
	function init(){
		parent::init();

		$form=$this->add('Form');
		$form->addField('line','no_of_pins')->validateNotNull();
		$form->addField('dropdown','kit')->setEmptyText("Select kit")->validateNotNull("Select a kit first")->setModel('Kit');

		$dm= $this->add('Model_Distributor');
		$dm->title_field='username';
		$form->addField('autocomplete/basic','distributor')
			->setOptions(array('minLength'=>3))
			->mustMatch()
			->validateNotNull()
			->setModel($dm);
		$form->addField('CheckBox','cash_sales');
		$form->addSubmit('Sale Pins');

		if($form->isSubmitted()){
			$pin=$this->add('Model_Pin');
			try{
				$this->api->db->beginTransaction();
				$pin->SalesToDIST($form->get('distributor'),$form->get('no_of_pins'),$form->get('kit'),$form->get('cash_sales'));
				
				$pintransaction=$this->add('Model_PinTransaction');
				$pintransaction['From_id']=$this->api->auth->model['pos_id'];
				$pintransaction['To_id']=$form->get('distributor');
				$pintransaction['Qty']=$form->get('no_of_pins');
				$pintransaction['kit_id']=$form->get('kit');
				$pintransaction['Narration']= $form->get('no_of_pins') . ' Pin(s) Sold to Distributor '. $form->get('distributor');
				$pintransaction['Transaction_Type']='PinSoldToDistributor';
				$pintransaction->save();
			}catch(Exception $e){
				$this->api->db->rollback();
				throw $e;
				$form->js()->univ()->errorMessage($e->getMessage())->execute();
			}
			$this->api->db->commit();
			$form->js(null, $form->js()->reload())->univ()->successMessage("Pins sold")->execute();

		}

	}
}