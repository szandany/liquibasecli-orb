#!/bin/bash
echo $CIRCLE_BUILD_NUM
export JAVA_OPTS=$JAVA_OPTS
liquibase --version
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS status --verbose
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS update
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS history