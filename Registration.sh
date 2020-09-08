#!/bin/bash -x

	read -p "Enter First Name : " First_Name

	read -p "Enter Last Name : " Last_Name

	Pattern="^[[:upper:]]{1}[a-zA-Z0-9]{2,}$"

	if [[ $First_Name =~ $Pattern ]]
	then
		echo First Name is Valid
	else
		echo First Name is Invalid
	fi

	if [[ $Last_Name =~ $Pattern ]]
   then
      echo Last Name is Valid
   else
      echo Last Name is Invalid
   fi
