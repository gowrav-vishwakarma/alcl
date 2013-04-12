<?php
class page_pins_changestatus extends Page{
	function init(){
		parent::init();

		$form=$this->add('Form');
		$form->addField('line','from_id')->validateNotNull();
		$form->addField('line','to_id')->validateNotNull();
		$form->addField('dropdown','status')->setValueList(array(
															"-1"=>"Any",
															"1"=>"Published",
															"0"=>"Un-Published"
												))->set('-1');
		$form->addSubmit('Status Change');

		if($form->isSubmitted()){
			if($form->get('status')=="-1") $form->displayError('status',"Select any valid status to change");
			$m=$this->add('Model_Pin');
			$m->addCondition('id','>=',$form->get('from_id'));
			$m->addCondition('id','<=',$form->get('to_id'));

			$posid=$this->api->auth->model['pos_id'];
			$m->_dsql()->where($m->dsql()->expr("(
				pos_id <> $posid OR
				Used = 1 OR 
				under_pos = 0
				)
				"));
			
			// $m->debug();
			$m->tryLoadAny();
			// throw $this->exception($this->api->auth->model['pos_id']);
			if($m->loaded())
				$form->js()->univ()->errorMessage("The pins have used pin in between or not owned by you, cannot change status")->execute();

			$no_of_pins=$this->api->db->dsql()
				->table('jos_xpinmaster')
				->set('published',$form->get('status'))
				->where('id','>=',$form->get('from_id'))
				->where('id','<=',$form->get('to_id'))
				// ->where('pos_id',$this->api->auth->model['pos_id'])
				->update();
			
			$pintransaction=$this->add('Model_PinTransaction');
			$pintransaction['From_id']=$this->api->auth->model['pos_id'];
			$pintransaction['To_id']=$this->api->auth->model['pos_id'];
			$pintransaction['Qty']=$no_of_pins;
			$pintransaction['kit_id']=0;
			$pintransaction['Narration']= $no_of_pins . ' Pin(s) Made publised = ' . $form->get('status') . " FROM ".$form->get('from_id')." TO ". $form->get('to_id');
			$pintransaction['Transaction_Type']='PinStatusChanged';
			$pintransaction->save();

			$form->js(null,array(
					$form->js()->reload(),
					$form->js()->univ()->successMessage("Status changed")
				))->univ()->execute();
		}
	}
}