#!/bin/bash

 
 echo ""
 echo ""
 
 banner()
{
  echo "+-----------------------------------------------+"
  printf "| %-40s    |\n" "`date`"
  echo "|                                              |"
  printf "|`tput bold` %-40s `tput sgr0`    |\n" "$@"
  echo "+-----------------------------------------------+"
}
banner "Develop by H420Prajyot"

 echo ""
 echo ""
  
 
akash1() { 
read -p "Enter the path of file : " path
file=$(cat $path)

#echo $path > name.txt

for (( ; ; ))
do
  # python3 mintotp.py <<< $file > otp.txt
   python3 mintotp.py <<< $file
   #python3 webhook.py 
   sleep 30
done
}


akash0() { 
piyush0() {
#read -p "Give name for TOTP : " name
#echo $name > name.txt
read -p "Enter Secret Key : " key
for (( ; ; ))
do
   #python3 mintotp.py <<< $key > otp.txt
   python3 mintotp.py <<< $key
   #python3 webhook.py
   sleep 30
done

}


piyush1() { 

read -p "Give name for TOTP : " name
read -p "Enter Secret Key : " key
touch $name
#echo $name > name.txt
echo $key > $name

for (( ; ; ))
do
   #python3 mintotp.py <<< $key > otp.txt
   python3 mintotp.py <<< $key
   #python3 webhook.py
   sleep 30
done

}


read -p "Wanna Save ? enter {1} for yes and {0} for no  : " num

if [[ $num = [10] ]]; then # validate input
  piyush"$num"
fi
}


read -p "Have Stored Key ? enter {1} for yes and {0} for no  : " numb

if [[ $numb = [10] ]]; then # validate input
  akash"$numb"
fi
