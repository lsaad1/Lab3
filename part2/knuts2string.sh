#!/bin/bash
awk '
BEGIN{
sign="";
backslash="/";
result=""}

{if (substr($0,1,1)=="-")
	{
	 sign="-";
	 gsub("-","",$0);
	 galleons=int($0/(23*17));
	 rem=$0%(23*17);
	 sickles=int(rem/17);
	 knuts=rem%17;
	 result=sign galleons backslash sickles backslash knuts}
else{
	 galleons=int($0/(23*17));
         rem=$0%(23*17);
         sickles=int(rem/17);
         knuts=rem%17;
         result=galleons backslash sickles backslash knuts}
print result}'

