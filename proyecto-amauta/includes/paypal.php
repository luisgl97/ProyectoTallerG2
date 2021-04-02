<?php


require 'paypal/autoload.php';

define('URL_SITIO', 'http://localhost:8888/proyecto-amauta');

$apiContext = new \PayPal\Rest\ApiContext(
      new \PayPal\Auth\OAuthTokenCredential(
          'AbwJ5fb4psudY5mzG9IV96URcHjekr6H7B3rx8aoXP5DstoNTSUrntFIvWmsybKzfx_vjsDsWogE2B-E',  // ClienteID
          'EKXmpl3DBz2Wey5qBo5EGzdlHQAV5bMcf197Q3_mUgbsFJPcF7fOE4YXWJEiZ9BUOR8mxUqk8oPoG4Zl'  // Secret
      )
);

