#!/bin/bash -x

	read -p "Enter First Name : " First_Name

	read -p "Enter Last Name : " Last_Name

	read -p "Enter User Id : " email

	read -p "Enter Mobile Number : " mobile

	read -p "Enter Password : " password

	Pattern="^[[:upper:]]{1}[a-zA-Z0-9]{2,}$"

	emailPattern="^[[:lower:]]{3}[a-zA-Z0-9]*([-+_.]?[a-zA-Z0-9])*@[a-z]{2,}.[a-z]{2,3}([.][a-z]{2})*$"

	mobilePattern="^[0-9]{2}[[:space:]][0-9]{10}$"

	special_char=$(($(tr -d '[[:alnum:]]' <<< $password | wc -m)-1))


	echo -e "\t\t\n Your Registration Details are \n"



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

	if [[ $mobile =~ $mobilePattern ]]
	then
		echo "It's a Valid Mobile Number"
	else
		echo "It's an Invalid Mobile Number"
	fi

	if [[ ${#password} -ge 8 && $password =~ [[:lower:]] && $password =~ [[:upper:]] && $password =~ [[:digit:]] && $special_char -eq 1 ]]
	then
		echo "Password Set Successfully "
	else
		echo "Incorrect Password "
	fi
