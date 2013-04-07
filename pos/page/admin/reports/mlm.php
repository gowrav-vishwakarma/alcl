<?php
class page_admin_reports_mlm extends page_admin_reports {
	function init(){
		parent::init();

		$tabs=$this->add('Tabs');
		$tabs->addTabURL('admin_reports_mlm_closing','Closing Report');
		$tabs->addTabURL('admin_reports_mlm_closingreports_mlm_total','OverAll Report');
	}
}