#!/bin/bash
export COMPOSE_PROJECT_NAME=slackclone_${CI_COMMIT_SHA}
docker-compose -f docker/compose/test.yml run slackclone unittests.sh
exitcode=$?
docker-compose -f docker/compose/test.yml down
exit $exitcode
