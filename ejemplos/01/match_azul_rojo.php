<?php
require_once '../lib/sphinxapi.php';
require_once '../lib/sphinx_help.php';
$mode = SPH_MATCH_ANY;

$cl = new SphinxClient();
$cl->SetServer('127.0.0.1',9312);
$cl->SetArrayResult ( true );
$cl->SetWeights ( array ( 100, 1 ) );
$cl->SetMatchMode ( $mode );

$res = $cl->Query('rojo azul', 'main');

show_result($res, $cl);
