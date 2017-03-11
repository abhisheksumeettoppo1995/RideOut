<?php
session_start();

//Include Google client library 
include_once 'src/Google_Client.php';
include_once 'src/contrib/Google_Oauth2Service.php';

/*
 * Configuration and setup Google API
 */
$clientId = '315927615973-ajfea273h15lrfo2nkqpjjr6mbg2i7en.apps.googleusercontent.com'; //Google client ID
$clientSecret = 'LG8I7-Km0aFRf_PvcmtYLW9-'; //Google client secret
$redirectURL = 'http://localhost/RideOut1/googlelogin/'; //Callback URL

//Call Google API
$gClient = new Google_Client();
$gClient->setApplicationName('RideOut Web application');
$gClient->setClientId($clientId);
$gClient->setClientSecret($clientSecret);
$gClient->setRedirectUri($redirectURL);

$google_oauthV2 = new Google_Oauth2Service($gClient);
?>