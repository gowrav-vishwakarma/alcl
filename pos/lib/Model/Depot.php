<?php
class Model_Depot extends Model_Pos {
	function init(){
		parent::init();
		$this->addCondition('type','Company_Depot');
	}
}