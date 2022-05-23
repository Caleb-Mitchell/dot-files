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
    flatpak update
    sudo apt update
    sudo apt upgrade
    sudo apt dist-upgrade
    sudo apt autoremove
end

# reload audio modules if glitched
alias reload_audio="sudo alsa force-reload"

# alias server="ssh -t caleb@10.0.0.140 -p8361 'bash -o vi'"
alias server="ssh -t caleb@10.0.0.140 -p8361"

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

# exa aliases
alias ls="exa --color=auto --icons"
alias ll="exa -lh --icons --git"
alias la="exa -lah --icons --git"

# postman alias
# alias postman="~/Programs/Postman/Postman &"
function postman
    ~/Programs/Postman/Postman &
    disown
end

# Ubuntu server aliases to sleep and wake screen
# alias sleep="setterm --blank force"
# alias wake="setterm --blank poke"

# Ubuntu server startup services function
# function startup
#   sudo ufw reload
#   sudo qbittorrent-nox &
#   sudo node /home/caleb/foundryvtt/resources/app/main.js
#   --dataPath=$HOME/foundrydata &
# end


#
## FUNCTIONS/ALIASES ##

# Initialize starship
starship init fish | source

# Initialize .rbenv
status --is-interactive; and rbenv init - fish | source

# Add emacs to path
fish_add_path ~/.emacs.d
# Add ~/bin to path
fish_add_path ~/bin/
fish_add_path ~/.local/bin/
# Add cargo bin to path
fish_add_path ~/.cargo/bin/
# Add go bin to path
fish_add_path ~/go/bin
# Add npm bin to path
fish_add_path ~/.npm-packages/bin
