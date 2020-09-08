#!/bin/bash -x

	read -p "Enter First Name : " First_Name

	read -p "Enter Last Name : " Last_Name

	read -p "Enter User Id : " email

	Pattern="^[[:upper:]]{1}[a-zA-Z0-9]{2,}$"

	emailPattern="^[[:lower:]]{3}[a-zA-Z0-9]*([-+_.]?[a-zA-Z0-9])*@[a-z]{2,}.[a-z]{2,3}([.][a-z]{2})*$"

	if [[ $First_Name =~ $Pattern ]]
	then
		echo "First Name is Valid"
	else
		echo "First Name is Invalid"
	fi

	if [[ $Last_Name =~ $Pattern ]]
   then
      echo "Last Name is Valid"
   else
      echo "Last Name is Invalid"
   fi

	if [[ $email =~ $emailPattern ]]
	then
		echo "It's Valid Email"
	else
		echo "It's Invalid Email"
	fi
