<?php

$config['atk']['base_path']='./atk4/';
$config['dsn']='mysql://root:winserver@localhost/alcl';

$config['url_postfix']='';
$config['url_prefix']='?page=';
$config['js']['jquery']='jquery-1.8.3.min';



$config['tmail']['transport'] = "PHPMailer";
$config['tmail']['phpmailer']['from'] = "help3gift@gmail.com";
// $config['tmail']['from'] = "help3gift@gmail.com";
$config['tmail']['phpmailer']['from_name'] = "3Gift System";
$config['tmail']['smtp']['host'] = "ssl://smtp.gmail.com";
$config['tmail']['smtp']['port'] = 465;
$config['tmail']['phpmailer']['username'] = "help3gift@gmail.com";
$config['tmail']['phpmailer']['password'] = "helphelphelp3gift";
$config['tmail']['phpmailer']['reply_to'] = "help3gift@gmail.com";
$config['tmail']['phpmailer']['reply_to_name'] = "3Gift System";

$config['tmail']['transport'] = "PHPMailer";
$config['tmail']['phpmailer']['from'] = "info@alcl.biz";
$config['tmail']['from'] = "";
$config['tmail']['phpmailer']['from_name'] = "Alcl Business";
$config['tmail']['smtp']['host'] = "ssl://mail.alcl.biz";
$config['tmail']['smtp']['port'] = 465;
$config['tmail']['phpmailer']['username'] = "info@alcl.biz";
$config['tmail']['phpmailer']['password'] = "Info@123";
$config['tmail']['phpmailer']['reply_to'] = "no-reply@alcl.biz";
$config['tmail']['phpmailer']['reply_to_name'] = "No-Reply";

# Agile Toolkit attempts to use as many default values for config file,
# and you only need to add them here if you wish to re-define default
# values. For more options look at:
#
#  http://www.atk4.com/doc/config

define ('DISCOUNT_GIVEN','Discount Allowed');
define ('DISCOUNT_TAKEN','Discount Received');
