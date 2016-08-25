# composer-termux

PHP's Composer for Android's Termux.

## About

This project is a patched version of `composer.phar`, fixed to work with Termux.  Since Termux doesn't have `/usr/bin/env`, composer doesn't work.  You need to rewrite the bin path to point to Termux's env and recompile the phar (since it's signed).  To recompile the phar you need composer; catch 22.

This repo builds the latest version of composer and publishes a release.  You can download the latest `composer.phar` from the releases tab.

## Installation

```bash
$ curl -L https://github.com/yuloh/composer-termux/releases/download/0.0.1/composer.phar -o composer.phar
$ chmod +x ./composer.phar
$ mv ./composer.phar /data/data/com.termux/files/usr/bin/composer
```
