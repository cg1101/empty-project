#!/bin/bash

set -xtrace
set -e

echo "Deploy product ... "

aws sts get-caller-identity
