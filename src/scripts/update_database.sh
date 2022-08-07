#!/bin/bash
export JAVA_OPTS=$JAVA_OPTS
echo "liquibase.log-file=${CIRCLE_BUILD_NUM}_${LOG_FILE}" > liquibase.properties
echo "liquibase.log-level=${LOG_LEVEL}" >> liquibase.properties
cat liquibase.properties
liquibase --version
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS status --verbose
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS update
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS history
# for f in *;do mv -v "$f" "${f%.*}_${CIRCLE_BUILD_NUM}.${f##*.}";done return | 0
