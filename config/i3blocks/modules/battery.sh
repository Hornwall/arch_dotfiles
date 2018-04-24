#!/bin/bash
background='#e37c44'
nextbg='#99ac4c'

battery=$(acpi -b | grep "Battery 0")
regpercent="([0-9]{0,3})%"

if [[ $battery =~ $regpercent ]]
then
  percent=${BASH_REMATCH[1]}
  echo "<span background='$nextbg' foreground='$background'></span><span background='$background'> BAT ${BASH_REMATCH[1]}% </span>"
else
  echo 'narp'
fi
