#!/bin/bash
awk '
BEGIN{
sign="";
galleons=sickles=knuts=totalKnuts=0}

{if(substr($1,1,1)=="-")
	{sign="-";
	 gsub("-","",$0);
	 split($0,str,"/");
	 galleons = str[1];
	 sickles = str[2];
	 knuts = str[3];
 	 totalKnuts = (((galleons*23)+sickles)*17)+knuts;
	 totalKnuts = -totalKnuts}
else{split($0, str ,"/");
	 galleons = str[1];
         sickles = str[2];
         knuts = str[3];
         totalKnuts = (((galleons*23)+sickles)*17)+knuts}
print totalKnuts}'

