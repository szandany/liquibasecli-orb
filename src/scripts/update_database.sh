#!/bin/bash
export JAVA_OPTS=$JAVA_OPTS
LB_PARAMS="--username=$PARAM_USERNAME --password=$PARAM_PASSWORD --url=$PARAM_URL --changeLogFile=$PARAM_CHANGELOG"
/liquibase/liquibase --version
/liquibase/liquibase $LB_PARAMS status --verbose
/liquibase/liquibase --changeLogFile="${PARAM_CHANGELOG}" update
