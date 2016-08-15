#!/bin/bash
set -e
git clone https://github.com/composer/composer.git
cd composer
composer install
sed -i '' 's/#!\/usr\/bin\/env php/#!\/data\/data\/com.termux\/files\/usr\/bin\/env php/g;n' ./src/Composer/Compiler.php
php ./bin/compile

