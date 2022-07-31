#!/bin/bash
export JAVA_OPTS=$JAVA_OPTS
LB_PARAMS="--username=$PARAM_USERNAME --password=$PARAM_PASSWORD --url=$url --changeLogFile=$PARAM_CHANGELOG"
/liquibase/liquibase --version
/liquibase/liquibase $LB_PARAMS status --verbose
/liquibase/liquibase $LB_PARAMS update
/liquibase/liquibase $LB_PARAMS history
