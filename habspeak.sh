#!/bin/bash
echo "welcome. this is a simple script that transmits your most recent openhab sensor states to thingspeak.com"
echo "using by using the cURL and cut commands (and the openhab rest API). you will need your openhab item names"
echo " and to have set up a public/private channel on thingspeak.com (your write API key). Let's get started!"
echo ""
echo ""
read -p "enter your thingspeak.com write API key (and press ENTER) " api_key
echo ""
read -p "please enter the local ip address of your openhab server (and press ENTER) " ip_addy
echo ""
while true
do
  read -p "is your openhab server running on the default port [8080]? (y/n) " answer
  case $answer in
   [yY]* ) port=8080
           echo "setting default port..."
           break;;
   [nN]* ) read -p "please enter the port number " port
           exit;;
       * ) echo "please enter y or n";;
  esac
done
echo ""
echo "great. now we'll set up your channel fields (up to 8) have your openhab item names handy."
echo ""
while true
do
  read -p "how many fields do you wish to set up (8 max)?" number_fields
  case $number_fields in
    1 ) read -p "please enter the openhab item name for field 1 (and press ENTER) " field1
        echo $field1
        break;;
    2 ) read -p "please enter the openhab item name for field 1 (and press ENTER) " field1
        echo $field1
        read -p "please enter the openhab item name for field 2 (and press ENTER) " field2
        echo $field2
        break;;
    3 ) read -p "please enter the openhab item name for field 1 (and press ENTER) " field1
        echo $field1
        read -p "please enter the openhab item name for field 2 (and press ENTER) " field2
        echo $field2
        read -p "please enter the openhab item name for field 3 (and press ENTER) " field3
        echo $field3
        break;;
    4 ) read -p "please enter the openhab item name for field 1 (and press ENTER) " field1
        echo $field1
        read -p "please enter the openhab item name for field 2 (and press ENTER) " field2
        echo $field2
        read -p "please enter the openhab item name for field 3 (and press ENTER) " field3
        echo $field3
        read -p "please enter the openhab item name for field 4 (and press ENTER) " field4
        echo $field4
        break;;
    5 ) read -p "please enter the openhab item name for field 1 (and press ENTER) " field1
        echo $field1
        read -p "please enter the openhab item name for field 2 (and press ENTER) " field2
        echo $field2
        read -p "please enter the openhab item name for field 3 (and press ENTER) " field3
        echo $field3
        read -p "please enter the openhab item name for field 4 (and press ENTER) " field4
        echo $field4
        read -p "please enter the openhab item name for field 5 (and press ENTER) " field5
        echo $field5
        break;;
    6 ) read -p "please enter the openhab item name for field 1 (and press ENTER) " field1
        echo $field1
        read -p "please enter the openhab item name for field 2 (and press ENTER) " field2
        echo $field2
        read -p "please enter the openhab item name for field 3 (and press ENTER) " field3
        echo $field3
        read -p "please enter the openhab item name for field 4 (and press ENTER) " field4
        echo $field4
        read -p "please enter the openhab item name for field 5 (and press ENTER) " field5
        echo $field5
        read -p "please enter the openhab item name for field 6 (and press ENTER) " field6
        echo $field6
        break;;
    7 ) read -p "please enter the openhab item name for field 1 (and press ENTER) " field1
        echo $field1
        read -p "please enter the openhab item name for field 2 (and press ENTER) " field2
        echo $field2
        read -p "please enter the openhab item name for field 3 (and press ENTER) " field3
        echo $field3
        read -p "please enter the openhab item name for field 4 (and press ENTER) " field4
        echo $field4
        read -p "please enter the openhab item name for field 5 (and press ENTER) " field5
        echo $field5
        read -p "please enter the openhab item name for field 6 (and press ENTER) " field6
        echo $field6
        read -p "please enter the openhab item name for field 7 (and press ENTER) " field7
        echo $field7
        break;;
    8 ) read -p "please enter the openhab item name for field 1 (and press ENTER) " field1
        echo $field1
        read -p "please enter the openhab item name for field 2 (and press ENTER) " field2
        echo $field2
        read -p "please enter the openhab item name for field 3 (and press ENTER) " field3
        echo $field3
        read -p "please enter the openhab item name for field 4 (and press ENTER) " field4
        echo $field4
        read -p "please enter the openhab item name for field 5 (and press ENTER) " field5
        echo $field5
        read -p "please enter the openhab item name for field 6 (and press ENTER) " field6
        echo $field6
        read -p "please enter the openhab item name for field 7 (and press ENTER) " field7
        echo $field7
        read -p "please enter the openhab item name for field 8 (and press ENTER) " field8
        echo $field8
        break;;
    * ) echo "please enter 1-8... "
        break;;
  esac
done
echo ""
echo "cURLing openhab, will output data and push to thingspeak shortly..."
echo ""
f1=`curl -s http://$ip_addy:$port/rest/items/$field1/state | cut -c 1-5`
echo $f1
f2=`curl -s http://$ip_addy:$port/rest/items/$field2/state | cut -c 1-5`
echo $f2
f3=`curl -s http://$ip_addy:$port/rest/items/$field3/state | cut -c 1-5`
echo $f3
f4=`curl -s http://$ip_addy:$port/rest/items/$field4/state | cut -c 1-5`
echo $f4
f5=`curl -s http://$ip_addy:$port/rest/items/$field5/state | cut -c 1-5`
echo $f5
f6=`curl -s http://$ip_addy:$port/rest/items/$field6/state | cut -c 1-5`
echo $f6
f7=`curl -s http://$ip_addy:$port/rest/items/$field7/state | cut -c 1-5`
echo $f7
f8=`curl -s http://$ip_addy:$port/rest/items/$field8/state | cut -c 1-5`
echo $f8

curl -k --data  "api_key=$api_key&field1=$f1&field2=$f2&field3=$f3&field4=$f4&field5=$f5&field6=$f6&field7=$f7&field8=$f8" https://api.thingspeak.com/update

echo "finished!"
