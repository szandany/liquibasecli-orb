#!/bin/bash
/liquibase/liquibase --changeLogFile="${PARAM_CHANGELOG}" status --verbose
/liquibase/liquibase --changeLogFile="${PARAM_CHANGELOG}" update
