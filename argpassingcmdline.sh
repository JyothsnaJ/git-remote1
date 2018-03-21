#!/bin/bash

##simple copy script

cp $1 $2

#printng the variables

echo "printing $1"

echo "printing $2"

##verify the copy command

ls -lh $2
