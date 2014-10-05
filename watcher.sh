#!/bin/bash

a=1

while [ a > 0 ]
do
	if [./script/pizzatime.html]
	then
		java -jar selenium-server-standalone-2.43.1.jar -htmlSuite "*firefox" "http://order.dominos.com/en/pages/order/#/locations/seach" "coolSuite.html" "coolResults.html"
	else
		sleep 5s
		echo "sleeping"
	fi
done
