<?php
class Model_SalaryMaster extends Model_Table {
	var $table= "jos_xxsalarymaster";
	function init(){
		parent::init();

		$this->addField('Pairs');
		$this->addField('Amount');
		$this->addField('Months');

	}
}