#!/bin/bash
# Authors : Madison Yost mayo9279@colorado.edu
# Date: 1/31/2019

#Problem 1 Code:
#accept a regex & file name from the user
echo "Enter a regular expression: "
#read the user input into a variable called uRegEx
read uRegEx
echo "Enter a file name: "
#read the user input into a variable called fileName
read fileName

#Problem 2 Code:
#feed the user's regex into a grep and run into user's chosen file
#use the variables from above to run the grep
grep -E "$uRegEx" "$fileName"

#Problem 3 Code:
#Hardcoded grep commands
#1. Count number of phone numbers in regex_practice.txt
echo "Number of phones:"
grep -E -c "^[0-9]{3}-[0-9]{3}-[0-9]{4}$" "regex_practice.txt"

#2. count the number of emails in regex_practice.txt
echo "Number of emails:"
grep -E -c "\b[0-9a-zA-Z]+@[A-Za-z]+\.[A-Za-z]+" "regex_practice.txt"

#3. list all of the phone numbers in the 303 area code & store results in phone_results.txt
#use the same regex as the phone numbers but replace the first three numbers with the 303 area code
grep -E "303-[0-9]{3}-[0-9]{4}$" "regex_practice.txt" > "phone_results.txt"

#4. list all of the emails from geocities.com and store the results in email_results.txt
#any word that starts with any number of alphanumeric characters and ends with the @geocities.com email address server
grep -E "\b[0-9a-zA-Z]+@geocities.com$" "regex_practice.txt" > "email_results.txt"

#5. list all of the lines that match a command-line regex and store the results in command_results.txt
grep -E $1 "regex_practice.txt" > "command_results.txt"

#Problem 4 Code: 
#run git add on your updated text files (& only stage these files)
git add "phone_results.txt" "command_results.txt" "email_results.txt"

#Problem 5 Code: 
# run git commit with a default message
git commit -m "Search result files added by script"

#Problem 6 & 7 Code:
#optional to push to github repo in the shell (would need to temporarily store my github credentials to do this) - or can do the push manually and don't need any code for that
