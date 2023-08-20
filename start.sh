rm -rf tmp/pids
mkdir -p tmp/pids

bundle exec rails db:migrate
service cron start
whenever --update-crontab
QUEUE=* bundle exec rake environment resque:work&
bundle exec foreman start