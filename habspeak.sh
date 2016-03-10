#!/bin/bash
###############################################################
# habspeak by Nick Reichley 19 Feb 2016 #######################
# based off thingspeak linux server monitoring tutorial found #
# at http://community.thingspeak.com/2014/05/official-tutorial-monitoring-linux-server-statistics/ #
###############################################################

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
           break;;
       * ) echo "please enter y or n"
	   break;;
  esac
done

echo ""
echo "great. now we'll set up your channel fields (up to 8) have your openhab item names handy."
echo ""

while true
do
  read -p "how many fields do you wish to set up (8 max)? " number_fields
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


read -p "would you like a .sh script (habspearkcron.sh) created following the execution of this script to add to your crontab? (y/n) " answer2

if [ "$answer2" == "y" ] || [ "$answer2" == "Y" ]; then
	printf "#!/bin/bash\n" >> habspeakcron.sh
	printf "api_key=$api_key\n" >> habspeakcron.sh
	printf "ip_addy=$ip_addy\n" >> habspeakcron.sh
	printf "port=$port\n" >> habspeakcron.sh
	printf "field1=$field1\n" >> habspeakcron.sh
	printf "field2=$field2\n" >> habspeakcron.sh
	printf "field3=$field3\n" >> habspeakcron.sh
	printf "field4=$field4\n" >> habspeakcron.sh
	printf "field5=$field5\n" >> habspeakcron.sh
	printf "field6=$field6\n" >> habspeakcron.sh
	printf "field7=$field7\n" >> habspeakcron.sh
	printf "field8=$field8\n" >> habspeakcron.sh
	printf "f1=\`curl -s http://$ip_addy:$port/rest/items/$field1/state | cut -c 1-5\`\n" >> habspeakcron.sh
	printf "f2=\`curl -s http://$ip_addy:$port/rest/items/$field2/state | cut -c 1-5\`\n" >> habspeakcron.sh
	printf "f3=\`curl -s http://$ip_addy:$port/rest/items/$field3/state | cut -c 1-5\`\n" >> habspeakcron.sh
	printf "f4=\`curl -s http://$ip_addy:$port/rest/items/$field4/state | cut -c 1-5\`\n" >> habspeakcron.sh
	printf "f5=\`curl -s http://$ip_addy:$port/rest/items/$field5/state | cut -c 1-5\`\n" >> habspeakcron.sh
	printf "f6=\`curl -s http://$ip_addy:$port/rest/items/$field6/state | cut -c 1-5\`\n" >> habspeakcron.sh
	printf "f7=\`curl -s http://$ip_addy:$port/rest/items/$field7/state | cut -c 1-5\`\n" >> habspeakcron.sh
	printf "f8=\`curl -s http://$ip_addy:$port/rest/items/$field8/state | cut -c 1-5\`\n" >> habspeakcron.sh
	printf "d=\`date\`\n" >> habspeakcron.sh
	printf "printf \"%%s = \" \"\$d\"; curl -k --data  \"api_key=\$api_key&field1=\$f1&field2=\$f2&field3=\$f3&field4=\$f4&field5=\$f5&field6=\$f6&field7=\$f7&field8=\$f8\" https://api.thingspeak.com/update\n" >> habspeakcron.sh
fi
d=`date`
printf "%s = " "$d"; curl -k --data  "api_key=$api_key&field1=$f1&field2=$f2&field3=$f3&field4=$f4&field5=$f5&field6=$f6&field7=$f7&field8=$f8" https://api.thingspeak.com/update
echo ""
echo "finished!"
echo ""
echo ""
echo "*********************************************************************************************************************************************************************"
echo "*************   add habspeakcron.sh to your crontab by executing sudo crontab -e and adding */15 * * * * /home/(username)/habspeakcron.sh to the bottom   ***********"
echo "*********************************************************************************************************************************************************************"
echo ""
echo ""
echo "bye!"
sleep 3
