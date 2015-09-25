# APP SETTINGS
set :application, "projetoacustico.com.br"
set :ip_address , "50.57.225.42"

# GIT SETTINGS
set :scm, :git
set :repository,  "git@github.com:victorneto/scaladb.git"
set :branch, "master"
set :deploy_via, :remote_cache

# SSH SETTINGS
set :user , "modena"
set :deploy_to, "/home/modena/public_html/#{application}/rails"
set :shared_directory, "#{deploy_to}/shared"
set :use_sudo, false
set :group_writable, false
default_run_options[:pty] = true

# ROLES
role :app, ip_address
role :web, ip_address
role :db,  ip_address, :primary => true

# HOOKS
after 'deploy:update_code' do
  db.symlink
  email.symlink
  #paperclip.symlink
  #cron.update
  run "cd #{release_path}; RAILS_ENV=production rake assets:precompile"
end

# TASKS
namespace :deploy do
  # Restart passenger on deploy
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end

namespace :db do
  desc "create link to database.yml"
  task :symlink do
    run "ln -s #{shared_path}/database.yml #{release_path}/config/database.yml"
  end

  desc "seed database"
  task :seed do
    run "cd #{current_path} && rake db:seed RAILS_ENV=production"
  end
end

namespace :email do
  desc "create link to mail_settings.rb"
  task :symlink do
    run "ln -s #{shared_path}/mail_settings.rb #{release_path}/config/initializers/mail_settings.rb"
  end
end

namespace :paperclip do
  desc "create link to files uploaded with paperclip"
  task :symlink, :roles => :app do
    run <<-CMD
      rm -rf  #{current_path}/public/system &&
      ln -nfs #{shared_path}/system #{release_path}/public/system
    CMD
  end
end

namespace :cron do
  desc "Update the crontab file"
  task :update, :roles => :db do
    run "cd #{release_path} && whenever --update-crontab #{application}"
  end
end
