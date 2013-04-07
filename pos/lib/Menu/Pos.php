<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Menu_Pos extends Menu{
    function init(){
        parent::init();
        
        $this->addMenuItem('admin_pos','Pos DashBoard');
    }
}