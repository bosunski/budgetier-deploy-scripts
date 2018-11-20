#!/usr/bin/env sh
set -x

ssh deploy@178.62.3.174 'bash -s' < ./scripts/deploy/after_deploy.sh
