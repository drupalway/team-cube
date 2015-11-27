<?php
$options['update-commands'] = array(
  // Run all hook_update_N implementation of enabled modules.
  'updatedb' => array('--yes'),
  // Clear cache
  'cache-rebuild' => array('drush'),
);

return $options;
