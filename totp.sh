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
banner "${green}Develop by Akash,Piyush,Om and Prajyot"

 echo ""
 echo ""
  
 
akash1() { 
read -p "Enter the path of file : " path
file=$(cat $path)

for (( ; ; ))
do
   python3 mintotp.py <<< $file
   sleep 30
done
}


akash0() { 
piyush0() {
read -p "Enter Secret Key : " key
for (( ; ; ))
do
   python3 mintotp.py <<< $key
   sleep 30
done

}


piyush1() { 

read -p "Give name for TOTP : " name
read -p "Enter Secret Key : " key
touch $name
echo $key > $name

for (( ; ; ))
do
   python3 mintotp.py <<< $key
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
