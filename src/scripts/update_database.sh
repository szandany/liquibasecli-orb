#!/bin/bash
export JAVA_OPTS=$JAVA_OPTS
LOG="--log-level=info --log-file=/tmp/${CIRCLE_BUILD_NUM}.log"
liquibase --version
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS $LOG status --verbose
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS update
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS history