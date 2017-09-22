#!/bin/bash

`sed -i "s/servers->setValue('server','host','127.0.0.1');/servers->setValue('server','host','ldap.cloud.com');/" /etc/phpldapadmin/config.php`
`sed -i "s/servers->setValue('server','base',array('dc=example,dc=com'));/servers->setValue('server','base',array('dc=cloud,dc=com'));/" /etc/phpldapadmin/config.php`
`sed -i "s/servers->setValue('login','bind_id','cn=admin,dc=example,dc=com');/servers->setValue('login','bind_id','cn=admin,dc=cloud,dc=com');/" /etc/phpldapadmin/config.php`
`sed -i "s/'appearance','password_hash'/'appearance','password_hash_custom'/" /usr/share/phpldapadmin/lib/TemplateRender.php`

`sed -i "s/<VirtualHost \*:80>/<VirtualHost \*:8181>/" /etc/apache2/sites-available/000-default.conf`
`sed -i "s/Listen 80/Listen 8181/" /etc/apache2/ports.conf`

