<?php
$s_cfg_file = '/config/speedtest/speedtest.cfg';
$s_cfg      = file_exists($s_cfg_file)  ? parse_ini_file($s_cfg_file)         : [];

$s_download = isset($s_cfg['DOWNLOAD']) ? intval($s_cfg['DOWNLOAD'])          : 0;
$s_list     = isset($s_cfg['LIST'])     ? htmlspecialchars($s_cfg['LIST'])    : 'auto';
$s_notify   = isset($s_cfg['NOTIFY'])   ? htmlspecialchars($s_cfg['NOTIFY'])  : 'no';
$s_ping     = isset($s_cfg['PING'])     ? intval($s_cfg['PING'])              : 0;
$s_secure   = isset($s_cfg['SECURE'])   ? htmlspecialchars($s_cfg['SECURE'])  : 'no';
$s_server   = isset($s_cfg['SERVER'])   ? intval($s_cfg['SERVER'])            : 0;
$s_share    = isset($s_cfg['SHARE'])    ? htmlspecialchars($s_cfg['SHARE'])   : 'share';
$s_timeout  = isset($s_cfg['TIMEOUT'])  ? intval($s_cfg['TIMEOUT'])           : 10;
$s_units    = isset($s_cfg['UNITS'])    ? htmlspecialchars($s_cfg['UNITS'])   : 'bits';
$s_upload   = isset($s_cfg['UPLOAD'])   ? intval($s_cfg['UPLOAD'])            : 0;
$s_warn     = isset($s_cfg['ALERT'])    ? htmlspecialchars($s_cfg['ALERT'])   : 'no';
$s_filename = '/config/speedtest/speedtest.xml';

if (!file_exists($s_filename)) {
    $xml = new SimpleXMLElement("<tests></tests>");
    $xml->asXML($s_filename);
}
?>