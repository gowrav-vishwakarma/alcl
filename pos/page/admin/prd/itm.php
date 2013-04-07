<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
class page_admin_prd_itm extends page_admin {

    function init() {
        parent::init();
        $this->add('Menu_Products');
        
        $this->add('H1')->set("Manage Products Here");
        $crd=$this->add('CRUD');
        $crd->setModel("Item");
        
    }

}