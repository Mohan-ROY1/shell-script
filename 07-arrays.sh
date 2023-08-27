#!/bin/bash
# this is scripting for arrays
PERSONS=["$1" "$2" "$3"]
echo "first person is : $PERSONS[1]"
echo "first person is : $PERSONS[$@]"
echo "first person is : $PERSONS[$0]"
