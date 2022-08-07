#!/bin/bash
export JAVA_OPTS=$JAVA_OPTS
$LOG_FILE=$(echo $LOG_FILE | sed 's/\.[^.]*$//')
echo "liquibase.log-file=$LOG_FILE_${CIRCLE_BUILD_NUM}.log" > liquibase.properties
echo "liquibase.log-level=$LOG_LEVEL" >> liquibase.properties
liquibase --version
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS status --verbose
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS update
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS history
