#!/bin/sh
set -e
rake db:create
rake db:test:prepare
rake db:migrate
exec "$@"
