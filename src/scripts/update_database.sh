#!/bin/bash
export JAVA_OPTS=$JAVA_OPTS
echo $URL_VAR
LB_PARAMS="--username=$PARAM_USERNAME --password=$PARAM_PASSWORD --url=$PARAM_URL --changeLogFile=$PARAM_CHANGELOG"
/liquibase/liquibase --version
/liquibase/liquibase $LB_PARAMS status --verbose
/liquibase/liquibase $LB_PARAMS update
/liquibase/liquibase $LB_PARAMS history
