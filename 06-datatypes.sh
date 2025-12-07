#!/bin/bash

NUMBER1=100
NUMBER2=200

TIMESTAMP=$(date)
echo "Script execute at: $TIMESTAMP"
SUM=$(($NUMBER1+$NUMBER2))

echo "Sum of $NUMBER! and $NUMBER2 is: $Sum"