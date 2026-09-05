######################################################################
#### --------------------- system variables --------------------- ####
######################################################################

set -x PATH $PATH /usr/sbin ~/.local/bin

abbr --add cloneme git clone ssh+git://git@github.com/cngba/
abbr --add setntp timedatectl set-ntp
abbr --add settime sudo timedatectl set-time

alias vim="nvim"




if status is-interactive
    set fish_greeting
    macchina-linux-x86_64
    # Commands to run in interactive sessions can go here
end

fish_config prompt choose informative
