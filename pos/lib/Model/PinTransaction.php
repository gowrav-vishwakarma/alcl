<?php
class Model_PinTransaction extends Model_Table{
	var $table="jos_xpintransaction";
	function init(){
		parent::init();

		$this->hasOne('Distributor','Fromdistributor_id');
		$this->hasOne('Distributor','Todistributor_id');
		$this->addField('Narration')->mandatory('This is a Required Field');
		$this->addField('Transaction_Type')->enum(array("PinGeneration","PinTransfer","PinSale"));
		$this->addField('created_at')->defaultValue(date('Y-m-d'));
	}
}