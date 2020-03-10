#!/bin/bash


#reading token from file and storing in a variable 
token=$(cat token.txt)


#NULL check	
if [ -z $token ]; then
	echo 'Token verification failed....'
	exit 0
else
	echo 'Token verified.'
fi 


echo " "
echo "#################################"
echo "PERMISION GRANTING PORTAL "
echo "#################################"
echo " "

read -p "Enter Project Name : " pname
read -p "Enter Username : " uname 
read -p "Enter the Access Type (read/write/admin) : " atype


pnameu=$(echo $pname | tr '[:lower:]' '[:upper:]')

atypeu=$(echo $atype | tr '[:lower:]' '[:upper:]')

#sending curl PUT request to the bitbucket rest api
curl -H "Authorization: Bearer $token" -X PUT "https://stash.gdn-app.com/rest/api/1.0/projects/$pnameu/permissions/users?permission=PROJECT_$atypeu&name=$uname"

echo " "
echo "Permission Granted Successfully..."