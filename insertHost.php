<?php
$contents     = file_get_contents($argv[2]);
$swag         = json_decode($contents, true);
$swag["host"] = $argv[1];
file_put_contents($argv[2], json_encode($swag));
