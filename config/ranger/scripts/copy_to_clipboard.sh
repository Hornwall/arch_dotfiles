mime=$(file -b --mime-type "$1")
xclip -selection clipboard -t "$mime" -i "$1"
