<?php

class page_admin_closing extends page_admin{
    function init(){
        parent::init();
        
        $tab=$this->add('Tabs');
        $tab->addTabURL('admin_closing_details', 'Payment Details');
        $tab->addTabURL('admin_closing_newclosing', 'New Closing');
    }
}