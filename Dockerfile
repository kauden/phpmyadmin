FROM kauden/nginx-fpm

MAINTAINER Thierry Corbin <thierry.corbin@kauden.fr>

ENV BASEDIR /site
ENV PHPMYADMIN_VERSION 4.3.12

WORKDIR ${BASEDIR}

RUN curl -L -o phpmyadmin.tar.gz "http://sourceforge.net/projects/phpmyadmin/files/phpMyAdmin/${PHPMYADMIN_VERSION}/phpMyAdmin-${PHPMYADMIN_VERSION}-all-languages.tar.gz" && \
    tar -C ${BASEDIR} -xf ${BASEDIR}/phpmyadmin.tar.gz phpMyAdmin-${PHPMYADMIN_VERSION}-all-languages --strip=1 && \
    rm -f ${BASEDIR}/phpmyadmin.tar.gz && \
    chown www-data:www-data ${BASEDIR} -R