#!/bin/bash

# not here to screw around
set -e

TERRAFORM_VERSION="${TERRAFORM_VERSION:-0.8.6}"

if ! which terraform &>/dev/null ; then
  echo "Terraform was not installed." >&2
  exit 1
fi

actual_version="$(terraform version | grep -ioP '(?<=^terraform[\s]v)\d+\.\d+\.\d+')"

if [ "${actual_version}" != "${TERRAFORM_VERSION}" ]; then
  echo "Terraform ${actual_version} was installed; ${TERRAFORM_VERSION} was expected." >&2
  exit 1
fi
