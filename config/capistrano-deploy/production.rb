set :deploy_to, "~/transparent-me/"
set :user, "marcycap"
set :use_sudo, false
set :port, 2222

set :application, "transparentme"
set :repository, "git@github.com:PolymathicMedia/transparent-me.git"

server "polymathicmedia.com", :app
