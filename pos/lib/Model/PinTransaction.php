<?php
class Model_PinTransaction extends Model_Table{
	var $table="jos_xpintransaction";
	function init(){
		parent::init();

		$this->hasOne('Distributor','From_id');
		$this->hasOne('Distributor','To_id');
		$this->hasOne('Kit','kit_id');
		$this->addField('Qty');
		$this->addField('Narration')->mandatory('This is a Required Field');
		$this->addField('Transaction_Type')->enum(array("PinGeneration",'PinStatusChanged',"PinTransfered","PinSoldToDistributor",'PinSoldToPOS'));
		$this->addField('created_at')->defaultValue(date('Y-m-d'));
	}
}