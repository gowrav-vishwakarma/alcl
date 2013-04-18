<?php
class page_admin_salarymaster extends page_admin_planmaster {
	function init(){
		parent::init();

		$crud=$this->add('CRUD');
		$crud->setModel('SalaryMaster');

	}
}