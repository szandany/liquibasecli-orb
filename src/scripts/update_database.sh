#!/bin/bash
export JAVA_OPTS=$JAVA_OPTS
echo ${!LB_LIC}
liquibase --version
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS status --verbose
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS update
liquibase --changeLogFile=$PARAM_CHANGELOG $LB_ARGS history