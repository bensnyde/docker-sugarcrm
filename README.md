# docker-sugarcrm
SugarCRM Docker Container

* Author: Benton Snyder <benton@bensnyde.me>
* Created: 7/3/15
* Updated: 7/3/15

Features
* Latest development build of SugarCRM <https://github.com/sugarcrm/sugarcrm_dev>
* Official PHP 5.6 Docker image <https://registry.hub.docker.com/_/php/>
* Official MySQL 5 Docker image <https://registry.hub.docker.com/_/mysql/>

## Usage
1. Bring up the containers with docker-compose
```
# docker-compose up
```
2. Open the IP address listed in a web browser
3. Install SugarCRM with the following
    * Database: sugarcrm
    * Database username: dbuser
    * Database password: dbuserpass
