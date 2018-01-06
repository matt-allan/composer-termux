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

## Usage

### Composer scripts

Any bin scripts you install (phpunit, psysh, etc) will need to be patched to work with Termux.  You can just run `termux-fix-shebang <my-file>` to rewrite the path.  Here's an example:

```bash
$ composer global require psy/psysh
$ termux-fix-shebang ~/.composer/vendor/bin/psysh
```

### Updating

If you run `composer update` composer will no longer work.

## Release Process

- bump the version in `build.sh`, commit and push
- Tag a release that matches the composer version. i.e. `git tag -a -m '1.6.2 release' 1.6.2`
- Push the tags - `git push origin --tags`
- Travis CI will build the new release and push it to github.
