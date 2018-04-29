#!/bin/bash

# P.S. ვარიაციებში სიმბოლოთა რიგის ათვლა იწყება ნულიდან
var=abcdABCD1234ABCDabcd
echo ორიგინალი ცვლადის მნიშვნელობა: $var

echo # \n

echo წინა მხრიდან ჩანაცვლება: ${var/#abcd/XXXX}
echo უკანა მხრიდან ჩანაცვლება: ${var/%abcd/XXXX}
echo ჩანაცვლება: ${var//abcd/XXXX}
echo ჩანაცვლება: ${var//1234/XXXX}

echo შემთხვევითი რიცხვი ათასამდე: $[$RANDOM % 1000]

echo

echo ბოლო ხუთი სიმბოლო: ${var:-5} # გამოყენება: "${ვარიაცია:[საჩვენებელი რაოდენობა]"
echo პირველი ხუთი სიმბოლო: ${var::5} # იგივეა რაც "${var:0: 5}"
echo მერვედან ოთხი სიმბოლო: ${var:8:4} # გამოყენება: "${ვარიაცია:[რიგის ნომერი]:[საჩვენებელი რაოდენობა]"
echo დიდი სიმბოლო: ${var^^}

echo

echo ერთის მერე: ${var#*1}
echo ერთამდე: ${var%1*}

echo

echo ვარიაციაში სიმბოლოთა რაოდენობა: ${#var}

#ხელსაწყო "wc"_ის გამოყენებით ვარიაციის სიმბოლოს რაოდენობას აჩვენებს
echo -n "ვარიაციაში სიმბოლოთა რაოდენობა (wc -m): "
echo -n "$var" | wc -m # "-m" უთითებს "wc" ხელსაწყოს რომ დაითვალოს სიმბოლოთა რაოდენობა

# და ბოლოს ხელსაწყო "sed"_ის გამოყენებით ტექსტის შეცვლა

echo -en "\nabcdABCD12_ის ჩანაცვლება: "
# "|" ნიშნავს წინა მოქმედებისგან გამოტანილი ინფორმაცია გადასცეს შემდგომ მოქმედებას
echo "$var" | sed 's/abcdABCD12/XXXXXXXXXX/g' # " მნიშვნელში "s" ნიშნავს საწყისს, ხოლო "g" სასრულს. მათ შორის იწერება სამი "/"
# პირველიდან მეორე ხაზამდე იწერება ტექსტი რომელიც უნდა შეიცვალოს. მეორე ხაზიდან მესამემდე იწერება ტექსტი რომლითაც უნდა შეიცვალოს
