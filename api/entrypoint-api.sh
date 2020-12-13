#!/bin/bash
set -e

rm -rf /opt/app/tmp/pids/server.pid

rake db:create
rake db:migrate

if [ "$RAILS_ENV" = "development" ]
then
    rails server -p 3000 -b 0.0.0.0
elif [ "$RAILS_ENV" = "test" ]
then
    rake test
else
    echo "Unknown RAILS_ENV value..."
fi
