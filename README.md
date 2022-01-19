# GMedia-Serilda

Installation steps

pull / clone this repository
do "composer install"
make .env based on .env.example
generate app_key using command "php artisan key:generate"
setting database config on .env
migrate db schema with seed "php artisan migrate --seed", u can finde seeder account on "/app/database/seeds/adminUser.php"
ready to launch with "php artisan serve"
