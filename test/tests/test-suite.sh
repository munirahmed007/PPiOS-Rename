#!/bin/bash

#Copyright 2016 PreEmptive Solutions, LLC
#See LICENSE.txt for licensing information

set -e

export PROGRAM="${PROGRAM:-ppios-rename}"
echo "Testing:"
type "${PROGRAM}" | sed 's,.* is ,  ,'

./test-double-obfuscation-protection.sh
./test-filters-and-exclusions.sh
./test-new-options.sh
