server "polymathicmedia.com", :app
set :user, "marcycap"
set :use_sudo, false
set :port, 2222

set :application, "application"
set :deploy_to, "~/JuntoProjects/#{application}/staging/"

set :repository, "git repostiory"

