# ENTERPOINT
# migrate
# rails db:setup
rails db:migrate

# start job in asyn first.
# bundle exec bin/delayed_job start
bundle exec rails s -p ${SERVE_PORT} -b 0.0.0.0
