source $HOME/.zsh/completion
# source $HOME/.zsh/keybindings
source $HOME/.zsh/functions
source $HOME/.zsh/aliases
source $HOME/.zsh/work_aliases
source $HOME/.zsh_prompt


# Save a ton of history
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=20000

# PATH
export PATH="$HOME/.bin:$PATH"
export PATH="./bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH="/Applications/Android/sdk/platform-tools:$PATH"
export PATH="~/.rbenv/bin:$PATH"
export PATH="/home/hannes/.yarn/bin:$PATH"
export PATH="/home/hannes/.cargo/bin:$PATH"
export PATH="/home/hannes/scripts/ruby:$PATH"
export PATH="/home/hannes/scripts/shell:$PATH"
export PATH=/Developer/NVIDIA/CUDA-7.0/bin:$PATH
export PATH=/home/hannes/.local/bin:$PATH
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-7.0/lib:$DYLD_LIBRARY_PATH
export APOEX_EMAIL="hannes.hornwall@apoex.se"
export SSH_ASKPASS="/usr/bin/ksshaskpass"
export ERL_AFLAGS="-kernel shell_history enabled"
#export DOCKER_HOST=tcp://127.0.0.1:32768
#

export GOPATH="$HOME/code/go"

export BROWSER=firefox

# Allow ssh-add to use kwallet
#eval $(ssh-agent -s) > /dev/null
#ssh-add </dev/null &> /dev/null
#export SSH_ASKPASS=/usr/bin/ksshaskpass
#export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

#rbenv
eval "$(rbenv init -)"

# editor
export EDITOR=/usr/bin/nvim

# cd
export CDPATH="$CDPATH:$HOME:$HOME/code:$HOME/.config"
setopt auto_cd

# Avoid issues in tmux
export LC_ALL="en_US.UTF-8"

# Scale
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
export QT_DEVICE_PIXEL_RATIO=2

# Google Cloud
source '/opt/google-cloud-sdk/path.zsh.inc'
source '/opt/google-cloud-sdk/completion.zsh.inc'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/share/nvm/init-nvm.sh
