#!/bin/bash
export JAVA_OPTS=$JAVA_OPTS
liquibase --version
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS ${!LB_LOGGING} status --verbose
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS ${!LB_LOGGING} update
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS ${!LB_LOGGING} history
# for f in *;do mv -v "$f" "${f%.*}_${CIRCLE_BUILD_NUM}.${f##*.}";done return | 0
