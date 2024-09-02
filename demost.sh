#!/bin/bash

status_code=$(curl --write-out %{http_code} --silent --output /dev/null www.guvi.in)
echo "site we are testing www.guvi.in"
echo " "

if [ $status_code -eq 200 ] 
then
  	echo site status is success with HTTP Status -$status_code
	echo " "
elif [ $status_code -eq 301 ]
then
	echo site status is success with HTTP Status Permanent redirection -$status_code 
	echo " "
elif [ $status_code -eq 302 ]
then
        echo site status is success with HTTP Status Temp redirection -$status_code 
	echo " "
elif [ $status_code -eq 400 ]
then
        echo site status failure with HTTP Status Bad request -$status_code
	echo " "
elif [ $status_code -eq 404 ]
then
        echo site status is Failure with Not Found $status_code
	echo " "
else
	echo "un defined"
	echo " "
fi
