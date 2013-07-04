<?php
class View_Tree extends View{
	var $start_id;
	var $depth=5;
	function init(){
		parent::init();
	}

	function drawNode($parent_id,$id,$depth){
		if($depth == 0 ) return;

		$m=$this->add('Model_Distributor');
		$m->load($id);
		$clr=($m['GreenDate'] != '0000-00-00') ? "folderred.gif" : "folder_ok.gif";
		
		$leg_left=$this->add("Model_Leg")->addCondition('distributor_id',$m->id)->addCondition('Leg','A')->tryLoadAny();
		$leg_right=$this->add("Model_Leg")->addCondition('distributor_id',$m->id)->addCondition('Leg','B')->tryLoadAny();

		$sess_a=0;
		$sess_b=0;
		$total_a=0;
		$total_b=0;
		$kit_name = $m->ref('kit_id')->get('name');
		if($leg_left->loaded()){
			$sess_a=$leg_left['SessionPV'];
			$total_a = $leg_left['TotalGreenCount'];
		}

		if($leg_right->loaded()){
			$sess_b=$leg_right['SessionPV'];
			$total_b = $leg_right['TotalGreenCount'];
		}

		$details = "<b>". $m['name']. "</b>";
		$this->js(true,"addNode($id,$parent_id,'".$m['username']."', '$clr','$details')");
		if($m['left_id'] <> null)
			$this->drawNode($id,$m['left_id'],$depth-1);
		else if($depth-1 > 0)
			$this->js(true,"addNode(-${id}0001,$id,'A','question.gif','Empty Position')");

		if($m['right_id'] <> null)
			$this->drawNode($id,$m['right_id'],$depth-1);
		else if($depth-1 > 0)
			$this->js(true,"addNode(-${id}0002,$id,'B','question.gif','Empty Position')");

		$m->unload();
		$m->destroy();
	}

	function render(){
		// $this->js(true,"addNode(-1,0,'".$a['name']."')");
		$this->drawNode(-1,$this->start_id,$this->depth);
		$this->js(true,"displayTree()");
		
		$a=$this->add('Model_Distributor');
		$a->load($this->start_id);
		$this->template->trySet('sponsor_id',$a['sponsor_id']);

		parent::render();
	}

	function defaultTemplate(){
		return array('view/tree');
	}
}