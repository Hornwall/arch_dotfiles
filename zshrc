source $HOME/.zsh/completion
source $HOME/.zsh/keybindings
source $HOME/.zsh/functions
source $HOME/.zsh/aliases
source $HOME/.zsh_prompt

# Save a ton of history
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=20000

# PATH
export PATH="$HOME/.bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH="/Applications/Android/sdk/platform-tools:$PATH"
export PATH=/Developer/NVIDIA/CUDA-7.0/bin:$PATH
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-7.0/lib:$DYLD_LIBRARY_PATH
export PATH="./bin:$PATH"


#rbenv
eval "$(rbenv init -)"

#keychain
eval $(keychain --eval --quiet --noask id_rsa)

# editor
export EDITOR=/usr/bin/nvim

# cd
export CDPATH="$CDPATH:$HOME:$HOME/code"
setopt auto_cd

# Avoid issues in tmux
export LC_ALL="en_US.UTF-8"

#scale
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
export QT_DEVICE_PIXEL_RATIO=2
