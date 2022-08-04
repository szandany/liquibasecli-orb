#!/bin/bash
# echo $URL_VAR
# echo $PARAM_CHANGELOG
# export LIQUIBASE_PRO_LICENSE_KEY="$PARAM_LBKEY"
export JAVA_OPTS=$JAVA_OPTS
# LB_PARAMS="--username=$PARAM_USERNAME --password=$PARAM_PASSWORD --url=$PARAM_URL --changeLogFile=$PARAM_CHANGELOG $LB_ARGS"
liquibase --version
# liquibase $LB_PARAMS status --verbose
# liquibase $LB_PARAMS update
# liquibase $LB_PARAMS history
liquibase $LB_ARGS status --verbose
liquibase $LB_ARGS update
liquibase $LB_ARGS history