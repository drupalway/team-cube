<?php

$databases = array (
  'default' => array (
    'default' => array (
      'database' => 'tc',
      'username' => 'tc',
      'password' => 'tc',
      'host'     => 'localhost',
      'port'     => '',
      'driver'   => 'mysql',
      'prefix'   => '',
    ),
  ),
);

$drupal_hash_salt = 'SOME_REALLY_RANDOM_STRING';
$settings['hash_salt']  = $drupal_hash_salt;
