#!/bin/bash -x

	read -p "Enter First Name : " First_Name

	Pattern="^[[:upper:]]{1}[a-zA-Z0-9]{2,}$"

	if [[ $First_Name =~ $Pattern ]]
	then
		echo Valid
	else
		echo Invalid
	fi

