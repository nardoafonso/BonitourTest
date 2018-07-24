#!/bin/sh

bin/rails db:migrate

if [[ $? != 0 ]]; then
  echo
  echo "== Failed to migrate. Running setup first."
  echo
  bin/rake db:setup
fi

# Execute the given or default command:
exec "$@"