# PHP Laboratory

This is a simple Docker container using Ubuntu 22.04, Composer 2.6 and PHP 5, 7 and 8 versions.
It allows to build and update old Laravel and Symfony projects in a virtual environment, in order to keep your PC clean.


```bash
# Change PHP version
update-alternatives --config php

# Run Laravel
php artisan serve --host=0.0.0.0 --port=8000

# Run Symfony
symfony serve --port=8000
```
