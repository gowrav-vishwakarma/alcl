<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Menu_Products extends Menu{
    function init() {
        parent::init();
        $this->addMenuItem('admin_prd_dsh','Product DashBoard');
        $this->addMenuItem('admin_prd_cat','Categories');
        $this->addMenuItem('admin_prd_itm','Items');
        // $this->addMenuItem('prd_prtis','Parties');
        // $this->addMenuItem('prchs_dsh','Purchase Management');
        
    }
}