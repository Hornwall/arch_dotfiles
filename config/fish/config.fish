set fish_greeting

set -x EDITOR "nvim"
set -gx CDPATH "~/code" "~/" "."

function fish_prompt -d "Write out the prompt"
  set_color cyan
  printf "%s %s" (prompt_pwd) '$ '
  set_color normal
end

function fish_right_prompt
  set_color green
  echo (fish_git_prompt)
  set_color normal
end

fish_add_path "/home/hannes/.yarn/bin"
fish_add_path "~/.rbenv/bin"
fish_add_path "./bin"

alias vim=nvim
alias :q=exit
alias git=hub
alias rs="rails s"
alias rc="rails c"

eval "$(rbenv init -)"

function nvm
    bass source /usr/share/nvm/init-nvm.sh
end
