Part 1:
- copy the 4HKD.pdb from cumoja1/3320
- create a Header.sh file and use grep -v to exclude on the phrase and use awk to print only the header
- create a question2.sh file and use command Sed -e ‘s/HETATM/ATOM /g’ -e ‘s/MSE/MET/g’ 4HKD.pdb to change "HETATM" to "ATOM  "and "MSE" to "MET"
- create a min_max.sh and set a min and max for x, y,z. and all the "ATOM" search for x,y,z min and max. print all min and max.
- create a mean.sh file and count the number of x,y,z , and sum all x, sum all y, sum all z. and use sum/ count to find mean/ make sure you are not dividing by 0
- create HOH.sh use comand sed 's\HOH\WAT\' to change "HOH" to "WAT"
you  need to use chmod +x [file] to change all file type before excute.

Part2: 
-Create a lab3dat.txt file and put all the numbers in.
- string2Knuts.sh file  and use substr and seperate the  string by with "/" and execute the file. Followed the professors file and re did the code 
-Create another file called  knuts2string.sh and use "%" and "/" to find the whole number and a reminder 
- To find the sum of the numbers i used the command cat lab3data.txt | ./string2Knuts.sh | awk 'BEGIN { sum =0} {sum += $0} END {print sum} ' | ./knuts2string.sh


