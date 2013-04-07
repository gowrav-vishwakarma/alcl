<?php
class page_admin_distributor extends page_admin {
	function init(){
            parent::init();

            $tab=$this->add('Tabs');
            $tab->addTabURL('admin_distributor_search','Search');
            $tab->addTabURL('admin_distributor_sms','SMS');
            $tab->addTabURL('admin_distributor_idshift','ID Shift');
        
            
        }
        
    }
        