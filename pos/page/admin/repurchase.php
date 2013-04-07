<?php
class page_admin_repurchase extends page_admin{
	function init(){
		parent::init();
		$this->add('Menu_Generation');
	}
}