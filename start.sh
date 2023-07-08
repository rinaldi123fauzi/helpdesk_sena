rm -rf tmp/pids
mkdir -p tmp/pids

bundle exec rails db:migrate
service cron start
whenever --update-crontab
bundle exec foreman start