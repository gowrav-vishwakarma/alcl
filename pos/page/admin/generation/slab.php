<?php

class page_admin_generation_slab extends page_admin{
	function init(){
		parent::init();

		$crud=$this->add('CRUD');
		if($crud->grid){
			$crud->grid->addColumn('sno','level');
		}
		$crud->setModel('GenerationSlabs');
	}
}