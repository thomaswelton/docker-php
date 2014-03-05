FROM thomaswelton.com:5000/apache

MAINTAINER thomaswelton

# Install PHP and apache
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install libapache2-mod-php5 php5-mcrypt php5-mysql php5

# Install APC
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install php-apc

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
