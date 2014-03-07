FROM thomaswelton/apache

MAINTAINER thomaswelton

# Install PHP and apache
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install libapache2-mod-php5 php5-mcrypt php5-mysql php5

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-software-properties

RUN add-apt-repository ppa:ondrej/php5

#RUN echo 'deb http://ppa.launchpad.net/ondrej/php5/ubuntu precise main' >> /etc/apt/sources.list
#RUN echo 'deb-src http://ppa.launchpad.net/ondrej/php5/ubuntu precise main' >> /etc/apt/sources.list

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade

# Install APC
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install php-apc

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

RUN DEBIAN_FRONTEND=noninteractive apt-get -y autoremove
