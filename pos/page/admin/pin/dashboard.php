<?php
class page_admin_pin_dashboard extends page_admin{
	function init(){
		parent::init();

		$tab=$this->add('Tabs');
		$tab->addTabUrl('admin_pin_changestatus','Menage Pin Status');
		$tab->addTabUrl('admin_pin_search','Search');
		$tab->addTabUrl('admin_pin_generate','Ganrate New Pins');
		// $tab->addTabUrl('pin_transfer','Pin Transfer');

	} 
}