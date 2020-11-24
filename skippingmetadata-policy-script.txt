#!/bin/bash
FILES="*.rb*"
JSON="*.json*"
for i in $FILES;
do
 if [ "$i" == "policy.rb" ] || [ "$i" == "metadata.rb" ];
  then
    echo "skipping default files $i "
  else
    chef install "$i"
 fi
done 
echo "here are the lock files"
for j in $JSON
do
  cat "$j"
  ls -lart "$j"  
done  
