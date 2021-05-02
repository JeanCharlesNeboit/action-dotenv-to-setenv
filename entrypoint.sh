#!/bin/sh -l

DOTENV_FILE=$1
[ -f "${DOTENV_FILE}" ] || { echo  "${DOTENV_FILE}: No such env file" >&2; exit 1; }

export DOTENV_FILE
${0%/*}/dotenv.sh
