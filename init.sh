#!/bin/bash

if [ ! -e hello ]; then
  mkdir hello
  mkdir db/mysql_data
  mkdir -p html/info
  touch html/info/index.php
  echo '<?php phpinfo();' > html/info/index.php
fi

if [ ! -e html/phpMyAdmin ]; then
  curl -L -O https://files.phpmyadmin.net/phpMyAdmin/4.8.3/phpMyAdmin-4.8.3-all-languages.zip
  unzip phpMyAdmin-4.8.3-all-languages.zip
  mv phpMyAdmin-4.8.3-all-languages html/phpMyAdmin
  rm -f phpMyAdmin-4.8.3-all-languages.zip
fi

