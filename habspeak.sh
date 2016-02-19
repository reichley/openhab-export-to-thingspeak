#!/bin/bash                                                                                                                                           

api_key='XXXXXXXXXXXXX'                                                                                                                            

ut=`curl -s http://localhost:8080/rest/items/node1t/state | cut -c 1-5`                                                            
uh=`curl -s http://localhost:8080/rest/items/node1h/state | cut -c 1-5`                                                            
echo $ut $uh                                                                                                                                          

pt=`curl -s http://localhost:8080/rest/items/node4t/state | cut -c 1-5`                                                            
ph=`curl -s http://localhost:8080/rest/items/node4h/state | cut -c 1-5`                                                            
echo $pt $ph                                                                                                                                          

ot=`curl -s http://localhost:8080/rest/items/node3t/state | cut -c 1-5`                                                            
oh=`curl -s http://localhost:8080/rest/items/node3h/state | cut -c 1-5`                                                            
echo $ot $oh                                                                                                                                          

curl -k --data  "api_key=$api_key&field1=$ut&field2=$uh&field3=$pt&field4=$ph&field5=$ot&field6=$oh" https://api.thingspeak.com/update
