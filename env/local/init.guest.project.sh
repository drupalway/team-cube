#!/usr/bin/env bash

test -d ~/.drush/kraftwagen || git clone -b drupal-8 --single-branch https://github.com/LennardWesterveld/kraftwagen.git ~/.drush/kraftwagen
drush cc drush

cd /var/www/tc.dw
drush kw-s
cp -f src/cnf/default.settings.php cnf/default.settings.php
drush kw-b
cd build
drush si kwd8 -y
