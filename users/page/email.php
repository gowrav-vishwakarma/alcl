<?php
class page_email extends Page{
	function init() {
		parent::init();

		$this->add( 'H2' )->set( 'This is Your Email Marketing Section' );
		$form=$this->add( 'Form' );
		$form->addField( 'text', 'emails', 'Email ID' )->setFieldHint( " Feed Email with Comma Seprated Values" );
		$form->addField( 'text', 'custom_message' )->setFieldHint( "Enter Custom Message Here" );
		$form->addSubmit( "Send" );

		if ( $form->isSubmitted() ) {
			$tm=$this->add( 'TMail_Transport_PHPMailer' );

			$msg=$this->add( 'SMLite' );
			$msg->loadTemplate( 'mail/freelogin' );
			$msg->trySet( 'user_name', $this->api->auth->model['name'] );
			$msg->trySet( 'custom_message', $form->get( 'custom_message' ) );
			$msg->trySet( 'sponsor', $this->api->auth->model['username'] );
			$msg->trySet( 'leg', 'A' );

			$email_body=$msg->render();
			$subject ="Hi this is ". $this->api->auth->model['name']. " and sending you a important business oppertunity.";
			try{
				$emails_array= explode( ',', $form->get( 'emails' ) );
				foreach ( $emails_array as $email_id ) {
					$tm->send( $email_id, "", $subject, $email_body );
				}
			}catch( phpmailerException $e ) {
				throw $this->exception( $e->errorMessage() );
			}catch( Exception $e ) {
				throw $e;
			}

			$form->js()->reload()->execute();

		}
	}
}
