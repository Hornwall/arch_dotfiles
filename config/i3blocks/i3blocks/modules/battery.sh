#!/bin/bash
background='#e37c44'
nextbg='#e37c44'

battery=$(acpi -b | grep "Battery 0")
regpercent="([0-9]{3})%"

if [[ $battery =~ $regpercent ]]
then
  percent=${BASH_REMATCH[1]}
  echo "<span foreground='$background'></span><span background='$background'> BAT ${BASH_REMATCH[1]}% </span>"
else
  echo 'narp'
fi
