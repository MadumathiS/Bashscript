#!/bin/bash
#Menu

echo "What would you like to do?"

select option in Jokes Date Calculator Quit 
do
	echo "$option"

#Options
case $option in
	
	Jokes)
		shuf -n 1 jokes.txt
		;;
	Date) 
		echo "`date`"
		;;

	Calculator)
	# Take user Input 
		echo "Enter Two numbers : "
		read a 
		read b 
  
	# Input type of operation 
		echo "Enter Choice :"
		echo "1. Addition"
		echo "2. Subtraction"
		echo "3. Multiplication"
		echo "4. Division"
		read ch 
  
	# Switch Case to perform 
	# calculator operations 
		case $ch in
	  	1)res=`echo $a + $b | bc` 
		;; 
	  	2)res=`echo $a - $b | bc` 
		;; 
	  	3)res=`echo $a \* $b | bc` 
		;; 
	  	4)res=`echo "scale=2; $a / $b" | bc` 
		;; 	
		esac
		echo "Result : $res" 
		;;
	Quit)
		break
		;;
	*) echo "Try again! $REPLY"
		;;
esac
done
© 2022 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
Loading
