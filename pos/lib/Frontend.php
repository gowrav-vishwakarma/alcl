<?php
/**
 * Consult documentation on http://agiletoolkit.org/learn 
 */
class Frontend extends ApiFrontend {
    function init(){
        parent::init();
        // Keep this if you are going to use database on all pages
        $this->dbConnect();
        $this->requires('atk','4.2.0');

        // This will add some resources from atk4-addons, which would be located
        // in atk4-addons subdirectory.
        $this->addLocation('atk4-addons',array(
                    'php'=>array(
                        'mvc',
                        'misc/lib',
                        )
                    ))
            ->setParent($this->pathfinder->base_location);

        // A lot of the functionality in Agile Toolkit requires jUI
        $this->add('jUI');

        // Initialize any system-wide javascript libraries here
        // If you are willing to write custom JavaScritp code,
        // place it into templates/js/atk4_univ_ext.js and
        // include it here
        $this->js()
            ->_load('atk4_univ')
            ->_load('ui.atk4_notify')
            // ->_load('ui.combobox')
            ;

        // If you wish to restrict actess to your pages, use BasicAuth class
        $auth=$this->add('BasicAuth');
        $auth->setModel('Staff','username','password');
//            ->allow('demo','demo')
            // use check() and allowPage for white-list based auth checking
            $auth->check()
            ;

        // This method is executed for ALL the peages you are going to add,
        // before the page class is loaded. You can put additional checks
        // or initialize additional elements in here which are common to all
        // the pages.

        // Menu:

        // If you are using a complex menu, you can re-define
        // it and place in a separate class
        if($this->api->auth->model->ref('pos_id')->get('type')=="Company"){
            $this->add('Menu',null,'Menu')
            ->addMenuItem('index','DashBoard')
            ->addMenuItem('admin_pos','POS Management')//ADMIN
            ->addMenuItem('admin_kit_dashboard','Kit')//ADMIN
            ->addMenuItem('admin_pin_dashboard','Pin')//ADMIN
            ->addMenuItem('admin_prd_dsh','Product Mng')//ADMIN
            ->addMenuItem('admin_actemp','Accounts Top')//ADMIN
            ->addMenuItem('admin_distributor','Distributors')//ADMIN
            ->addMenuItem('admin_distributor_treeview','Tree View')//ADMIN
            ->addMenuItem('admin_closing','Closing')//ADMIN
            ->addMenuItem('admin_planmaster','Plan Master')//ADMIN
            ;
        }
            
            $this->add('Menu',null,'Menu')
            ->addMenuItem('index','DashBoard')
            ->addMenuItem('ledgers/my','A/C Heads')
            ->addMenuItem('vouchers/dashboard','A/C Vouchers')
            ->addMenuItem("pins/sales","Pin Management")
            ->addMenuItem('stock/dashboard','Stocks')
            ->addMenuItem('reports/dashboard','Reports')
            ->addMenuItem('utility/dashboard','utilities')
            ->addMenuItem('logout')
            ;

        $this->addLayout('UserMenu');
        $this->add('H1',null,'logo')->set('Welcome ' . $this->auth->model['name'] . " [" . $this->auth->model->ref('pos_id')->get('name') . " ]");
        $this->add('H3',null,'date')->set($this->api->recall('setdate',date('Y-m-d')));
    }
    function layout_UserMenu(){
        if($this->auth->isLoggedIn()){
            $this->add('Text',null,'UserMenu')
                ->set('Hello, '.$this->auth->get('username').' | ');
            $this->add('HtmlElement',null,'UserMenu')
                ->setElement('a')
                ->set('Logout')
                ->setAttr('href',$this->getDestinationURL('logout'))
                ;
        }else{
            $this->add('HtmlElement',null,'UserMenu')
                ->setElement('a')
                ->set('Login')
                ->setAttr('href',$this->getDestinationURL('authtest'))
                ;
        }
    }
    function page_examples($p){
        header('Location: '.$this->pm->base_path.'examples');
        exit;
    }
}
