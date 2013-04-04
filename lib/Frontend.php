<?php
/**
 * Consult documentation on http://agiletoolkit.org/learn 
 */
class Frontend extends ApiFrontend {
    public $welcome;
    function init(){
        parent::init();
        // Keep this if you are going to use database on all pages
        //$this->dbConnect();
       // $this->api->dbConnect() ;
        $this->requires('atk','4.2.1');

        // This will add some resources from atk4-addons, which would be located
        // in atk4-addons subdirectory.
        $this->addLocation('atk4-addons',array(
                    'php'=>array(
                        'mvc',
                        'misc/lib',
                        'filestore/lib',
                        )
                    ))
            ->setParent($this->pathfinder->base_location);

        $this->addLocation('.',array(
            "addons"=>'xavoc-addons'
            ));

//$this->api->dbConnect();
        // A lot of the functionality in Agile Toolkit requires jUI
        $this->add('jUI');

        // Initialize any system-wide javascript libraries here
        // If you are willing to write custom JavaScritp code,
        // place it into templates/js/atk4_univ_ext.js and
        // include it here
        $this->js()
            ->_load('atk4_univ')
            ->_load('ui.atk4_notify')
            ;

        // If you wish to restrict actess to your pages, use BasicAuth class
            
        
        
//      $auth=  $this->add('Auth')
//            
//              ->allow('nitin','bvmsss')
//              
        //     // use check() and allowPage for white-list based auth checking
        $m=$this->add('Menu',array('current_menu_class'=>'active','inactive_menu_class'=>''),'Menu');  
        $m->addMenuItem('index','Welcome');
        $m->addMenuItem('about','About Us');
        $m->addMenuItem('contactus','Contact Us');
        $m->addMenuItem('profile','Products');
        $m->addMenuItem('opportunity','Opportunity');
        // $m->addMenuItem('customers_dashboard','Customer Area');
        // // $m->addMenuItem('reports','Reporting System');
        // $m->addMenuItem('staff','Staff Management');
        // $m->addMenuItem('logout');

        // $auth=$this->add('BasicAuth');
        //   $auth->setModel('Customer','username','password');
        //   // $auth->allowPage(array('index','aboutus','contactus'));
        //   $auth->check()
        //     ;
        // This method is executed for ALL the peages you are going to add,
        // before the page class is loaded. You can put additional checks
        // or initialize additional elements in here which are common to all
        // the pages.

        // Menu:

        // If you are using a complex menu, you can re-define
        // it and place in a separate class
        
     // $pp=$this->api->auth->model['master'];
     // $dd=$this->api->auth->model['data'];
     // $rr=$this->api->auth->model['reports'];
     // $usr=$this->api->auth->model['user'];
          
        //$this->add('H1', null, 'logo')->set("BVMSSS");
        $this->addLayout('UserMenu');
        
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
