#!/bin/bash

mkdir hello
mkdir db/mysql_data
mkdir -p html/info
touch html/info/index.php
echo '<?php phpinfo();' > html/info/index.php
