## VIM KEYBINDINGS ##
function my_vi_bindings
  fish_vi_key_bindings
end
set -g fish_key_bindings my_vi_bindings

function fish_user_key_bindings
    # Execute this once per mode that emacs bindings should be used in
    fish_default_key_bindings -M insert

    # Then execute the vi-bindings so they take precedence when there's a conflict.
    # Without --no-erase fish_vi_key_bindings will default to
    # resetting all bindings.
    # The argument specifies the initial mode (insert, "default" or visual).
    fish_vi_key_bindings --no-erase insert
end
# set $EDITOR so when a program starts an editor it uses nvim
export EDITOR=vim

# Disable fish greeting
set -g -x fish_greeting ''

## FUNCTIONS/ALIASES ##
#

# update
function update
    sudo apt update
    sudo apt upgrade
    sudo apt autoremove
end

# allow for sudo !! like in bash
function sudo --description "Replacement for Bash 'sudo !!' \
   command to run last command using sudo."
    if test "$argv" = !!
    eval command sudo $history[1]
else
    command sudo $argv
    end
end

# neovim alias
alias vim="nvim"
alias vi="nvim"

# postman alias
# alias postman="~/Programs/Postman/Postman &"
function postman
    ~/Programs/Postman/Postman &
    disown
end

# Ubuntu server aliases to sleep and wake screen
alias sleep="setterm --blank force"
alias wake="setterm --blank poke"

# Ubuntu server startup services function
function startup
  sudo ufw reload
  sudo qbittorrent-nox &
  sudo node /home/caleb/foundryvtt/resources/app/main.js
  --dataPath=$HOME/foundrydata &
end

#
## FUNCTIONS/ALIASES ##

# Initialize starship
starship init fish | source

