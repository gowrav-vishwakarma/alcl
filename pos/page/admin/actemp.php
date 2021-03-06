<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
class page_admin_actemp extends page_admin {

    function init() {
        parent::init();
        $tabs=$this->add('Tabs');
        
        $htab=$tabs->addTab("Heads");
        $hc=$htab->add('CRUD');   
        $hc->setModel('Head');
        
        $gtab=$tabs->addTab("Groups");
        $gc=$gtab->add("CRUD");
        $gc->setModel('GroupsAll',array('id','name','head','group_id'));
        if($gc->form){
            $gc->form->getElement('group_id')->setEmptyText("Root Group");
        }

        $ltab=$tabs->addTab("Ledgers");
        $lc=$ltab->add("CRUD");
        $lc->setModel('DefaultLedgers');
        
        if($lc->grid){
            $lc->grid->addPaginator(100);
            $lc->grid->addQuickSearch(array('name'));
        }
        
        if($lc->form){
            $lc->form->getElement('group_id')->setEmptyText("Root Group");
        }

    }

}