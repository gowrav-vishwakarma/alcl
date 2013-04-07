<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Menu_AdminReports extends Menu{
    function init() {
        parent::init();
        $this->addMenuItem('admin/reports/mlm',"MLM Reports");
        $this->addMenuItem('admin/reports/kits',"Kits Reports");
        $this->addMenuItem('admin/reports/pins',"Pins Reports");
        // $this->addMenuItem('reports/ledger',"Ledger");
    }
}