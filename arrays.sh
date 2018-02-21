#!/bin/bash

JOBS=( JOB1 JOB2 JOB3 JOB4 JOB5 JOB6 JOB7 JOB8 JOB9 JOB10 JOB11 JOB12 )

JOBS_FAILED=()
JOBS_SUCCEEDED=()

SEP="\n==========================\n"

function joinarr { local d=$1; shift; echo -n "$1"; shift; printf "%s" "${@/#/$d}"; }


for JOB in "${JOBS[@]}" ; do

  printf "Running job ${JOB}..."

  SUCCESS=$(( 0 + RANDOM % 2 ))
  if [[ $SUCCESS != 0 ]] ; then
    printf "failed!\n"
    JOBS_FAILED+=(${JOB})
  else
    printf "OK!\n"
    JOBS_SUCCEEDED+=(${JOB})
  fi
done

printf "\n"
printf "Jobs succeeded${SEP}$(joinarr "\n" ${JOBS_SUCCEEDED[@]})${SEP}\n"

if [[ ${#JOBS_FAILED[@]} > 0 ]] ; then
  printf "Jobs failed${SEP}$(joinarr "\n" ${JOBS_FAILED[@]})${SEP}\n"
fi
