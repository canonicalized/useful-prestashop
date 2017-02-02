<?php

require(dirname(__FILE__).'/config/config.inc.php');

$token = Tools::getValue('token');
if (!$token || $token != 'test123')
     die();

Tools::clearSmartyCache();
Tools::clearXMLCache();
Media::clearCache();
PrestaShopAutoload::getInstance()->generateIndex();
apcu_clear_cache();
echo "OK";