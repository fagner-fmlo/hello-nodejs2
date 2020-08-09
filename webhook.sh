#!/bin/bash

#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.

echo ""

#Este script é responsável por realizar o deploy e atualizar o ambiente de produção. Por favor, substitua o repositório pelo seu.

printf "%s\n" "Iniciando o processo de deploy \n"

cd /tmp/
sudo -u www-data rm -rf hello-nodejs2
sudo -u www-data git clone https://github.com/fagner-fmlo/hello-nodejs2.git
sudo -u www-data mv /var/www/html/hello-nodejs2 /var/www/html/hello-nodejs2_BKP
sudo -u www-data mv /tmp/hello-nodejs2 /var/www/html/hello-nodejs2
sudo -u www-data rm  -rf /var/www/html/hello-nodejs2_BKP
cd /var/www/html/hello-nodejs2
sudo -u www-data find . -type f -exec chmod 644 {} \;
sudo -u www-data find . -type d -exec chmod 755 {} \;
sudo -u www-data chown -R www-data:www-data .

printf "%s\n" "Deploy finalizado com sucesso!!! \n"
