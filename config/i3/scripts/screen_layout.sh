layouts=$(ls "$HOME/.screenlayout")
selected=$( echo "$layouts"$'\narandr'| dmenu -i -p 'Select display layout')
if [ "$selected" = "arandr" ]; then
  arandr && i3-msg restart
else
  /bin/bash "$HOME/.screenlayout/$selected" && i3-msg restart
fi
