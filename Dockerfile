FROM ubuntu:22.04

# Basic installs
RUN apt-get update -qqy \
    && apt-get upgrade -qqy \
    && apt install wget curl -qqy \
    && apt install zip unzip -qqy \
    && apt install git -qqy

# Install timezone data
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Madrid
RUN apt-get install tzdata -qqy

# Add PHP repository
RUN apt install software-properties-common -qqy \
    && add-apt-repository ppa:ondrej/php -y \
    && apt update -qqy

# Install PHP 5.x
RUN apt install php5.6 php5.6-fpm php5.6-mysql -qqy

# Install PHP 7.x
RUN apt install php7.3 php7.3-bz2 php7.3-curl php7.3-mbstring php7.3-intl php7.3-dom php7.3-zip -qqy

# Install PHP 8.x
RUN apt install php8.3 php8.3-bz2 php8.3-curl php8.3-mbstring php8.3-intl php8.3-dom php8.3-zip -qqy

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apt autoremove && apt autoclean

# Add user to match local ids
RUN groupadd -g 1000 superstar \
    && useradd superstar -u 1000 -g 1000 -m -s /bin/bash

WORKDIR /app

CMD ["tail", "-f", "/dev/null"]
