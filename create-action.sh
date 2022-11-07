#!/bin/bash

set -e

COMMAND="${1//-/_}" #replace dashes with underscore
COMMAND="${COMMAND/ /_}" #replace spaces with underscore

VERSION=$2

if [[ $COMMAND == "global_options" ]]; then
  exit 0
fi

protoc --proto_path=. --liquibasecli-orb_out=. --liquibasecli-orb_opt=paths=source_relative --liquibasecli-orb_opt=version=$VERSION ./$COMMAND.proto
chmod +x ./src/scripts/$COMMAND.sh
rm ./$COMMAND.proto