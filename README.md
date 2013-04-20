junto-theme-repo-template
=========================

This repository acts as a template for all junto projects that want to use basepress

To customize this directory follow the following checklist

[] Create a new git repostiory initialized with a readme
[] Clone that repo onto your machine
[] Copy all files from this repo into that one excepting dot files
[] copy over the dot file .gitmodules and .gitignore into the new repo
[] Check that deploy-sensitive-{stage}.bf files are correct for deployment
[] Check deploy/capistrano-deploy/staging is correct for the staging environment - presently hostgator,name the application, and set the git repo
[] Check deploy/capistrano-deploy/production is correct for the production environment - presently hostgator,name the application, and set the git repo
[] Set /config/htaccess/.htaccess-{stage} is correct for each stage, currently hostgator. Other options available in folder
[] Customize the wp-config-app.php file with the project name and correct timezone
[] Check that wp-config-{stage} is correct for each server
[] Customize application theme name for the directory /themes/junto/ - /themes/{project name}
[] Customize the //themes/{project name}/style.css file for the theme name and author
[] Customize the //themes/{project name}/index.php file for the theme name and author
[] Run git submodule summary and/or git submodule udpate --recursive --init to make sure the submodule is set up correctly
[] Commit

Dev setup Checklist
1.) Create an empty database for the wordpress application with collation utf8_general_ci
2.) Git clone the application to a folder
3.) Run "Git submodule update --recursive --init"
4.) Run the basepress/basicdevsetup.sh with "sh basepress/basicdevsetup.sh"
5.) Create a wp-sensitive-local.json file in config/sensitive/ by copying the wp-sensitive-template.json and customizing the values
6.) Run "Git submodule foreach --recursive 'git checkout master'" - this will ensure that the submdoules are on the correct branch - since branch is not defaulted
7.) Run "(path to php) basepress/tools/mysql-php-migrations/migrate.php latest
8.) activate the account

Dev update checklist
1.)git pull
2.)Run "Git submodule update --recursive --init"
3.)Run "(path to php) basepress/tools/mysql-php-migrations/migrate.php latest
4.)Activate the theme again (hit the url {host}/wp-admin/?activated=true with the admin account)

