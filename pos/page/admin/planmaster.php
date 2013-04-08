<?php
class page_admin_planmaster extends page_admin{
	function init(){
		parent::init();
		$this->add('Menu_Generation');
	}
}