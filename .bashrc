#
# ~/.bashrc
#

## Immediate interactive guard (Must be at the very top)
## If not running interactively, stop executing immediately
[[ $- != *i* ]] && return

## Initialize ble.sh (No-attach mode)
## Safe check: only source if the file actually exists on the system
[[ -f /usr/share/blesh/ble.sh ]] && source /usr/share/blesh/ble.sh --noattach

## Aliases
alias ls='ls -alh --color=auto'
alias grep='grep --color=auto'
alias cam='systemctl --user restart pipewire wireplumber && GSK_RENDERER=gl snapshot'

## Promt definition
PS1='\n\u@\h: \w\$ '

## Attach ble.sh and config keybindings
if [[ ${BLE_VERSION-} ]]; then
    ## Translate up/down arrow history search to ble.sh bindings
    ble-bind -f 'up' 'history-search-backward'
    ble-bind -f 'down' 'history-search-forward'
    

    ## Finalize attachment
    ble-attach
else
    ## Fallback key bindings if ble.sh fails to load or is uninstalled
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi

