#!/bin/bash

if [[ "${LARAVEL}" = true ]]; then
  echo "[info] Running laravel-swoole process"
  cd /code
  if [[ "${COMPOSER_UPDATE}" == true ]]; then
    composer update
  fi
  php artisan swoole:http start
else
  echo "[info] No run command set.  Running default swoole.php (example app)"
  cd /app
  php swoole.php
fi
