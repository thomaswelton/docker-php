FROM thomaswelton.com:5000/composer

MAINTAINER thomaswelton

# Install PHP and apache
RUN apt-get -y install apache2 libapache2-mod-php5 php5-mcrypt php5-mysql

# Install APC
RUN apt-get -y install php-apc

# Enable apache module actions and rewrite, fastcgi and alias are enabled on install
RUN ln -s /etc/apache2/mods-available/actions.load /etc/apache2/mods-enabled/actions.load
RUN ln -s /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/rewrite.load


# Expose ports
EXPOSE 80
