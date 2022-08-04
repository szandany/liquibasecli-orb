#!/bin/bash
# echo $URL_VAR
# echo $PARAM_CHANGELOG
export JAVA_OPTS=$JAVA_OPTS
LB_PARAMS="--username=$PARAM_USERNAME --password=$PARAM_PASSWORD --url=$PARAM_URL --changeLogFile=$PARAM_CHANGELOG $LB_ARGS"
liquibase --version
liquibase $LB_PARAMS status --verbose
liquibase $LB_PARAMS update
liquibase $LB_PARAMS history
