#!/bin/bash -x
## Set up environment
. /etc/profile.d/01-locale-fix.sh
. /opt/intel/oneapi/setvars.sh
. /etc/profile.d/z10_spack_environment.sh

## Run executable
/opt/models/bin/fv3.exe $1 $2 $3 $4 $5
