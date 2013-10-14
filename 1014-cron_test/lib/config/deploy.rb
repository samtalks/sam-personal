after "deploy:symlink", "deploy:update_crontab"

namespace :deploy do
  desc "do cron job test"
  task :update_crontab, :roles => :db do
    run "cd #{release_path} && whenever --update-crontab #{application}"
  end
end