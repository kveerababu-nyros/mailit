


set :default_env, {

 :PATH => '/home/deploy/.rvm/gems/ruby-2.1.3-p242/bin:/home/deploy/.rvm/gems/ruby-2.1.3-p242@global/bin:/home/deploy/.rvm/rubies/ruby-2.1.3-p242/bin:/home/deploy/.rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games'

} 

set :application, 'mailit'

set :repo_url, 'https://github.com/kveerababu-nyros/mailit.git'

  set :deploy_to,  "/var/www/mailit.git"

 #set :linked_files, %w{config/database.yml}

 set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}



namespace :deploy do


desc 'Restart application'

  task :restart do

    on roles(:app), in: :sequence, wait: 5 do

      # Your restart mechanism here, for example:

       execute :touch, release_path.join('tmp/restart.txt')

    end

  end


after :publishing,'deploy:restart'

  after :finishing, 'deploy:cleanup'


end

