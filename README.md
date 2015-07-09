# docker-sugarcrm
SugarCRM Docker Container

* Author: Benton Snyder <benton@bensnyde.me>
* Created: 7/3/15
* Updated: 7/9/15

Features
* Latest development build of SugarCRM <https://github.com/sugarcrm/sugarcrm_dev>
* Official PHP 5.6 Docker image <https://registry.hub.docker.com/_/php/>
* Official MariaDB 10 Docker image <https://registry.hub.docker.com/_/mariadb/>

## Usage
1. Bring up the containers with docker-compose
```
# docker-compose up
```
2. Open the IP address listed in a web browser
3. Install SugarCRM with the following
    * Database name: sugarcrm
    * Database host: db
    * Database username: dbuser
    * Database password: dbuserpass
