FROM ubuntu:18.04 

RUN apt update \
&& apt -y upgrade \
&& apt -y install php7.2-common php7.2-cli php7.2-gd php7.2-mysql php7.2-curl php7.2-intl php7.2-mbstring php7.2-bcmath php7.2-imap php7.2-xml php7.2-zip \
&& apt install curl \
&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
&& composer create-project --prefer-dist laravel/laravel my_app "5.7" 

WORKDIR /my_app

CMD php artisan serve --host=0.0.0.0 --port=2001