<?php

class Menu_Generation extends Menu {
	function init(){
		parent::init();
		$this->addMenuItem('admin/generation/slab','Genration slabs');
		$this->addMenuItem('admin/salarymaster','Salary Master');
	}
}