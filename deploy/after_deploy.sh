#!/usr/bin/env sh
set -x

cd /var/www/dev.budgetier/html && \
git pull origin staging && \
composer update --no-interaction && \
php artisan migrate && \
composer remove barryvdh/laravel-debugbar && \
git config --global user.email "budgetierllc@gmail.com" && \
git config --global user.name "Budgetier" && \
php artisan route:clear && \
php artisan view:clear && \
php artisan route:cache && \
php artisan view:cache
