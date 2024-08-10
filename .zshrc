# Use powerline
USE_POWERLINE="false"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

export EDITOR=/usr/bin/vim

# My aliases
alias LS='ls $LS_OPTIONS -al --group-directories-first'
alias CF='cd ~/code/cook/
          rm -r 1 2 3 4 5 6 7 8 9
          cp -r 0 1
          cp -r 0 2
          cp -r 0 3
          cp -r 0 4
          cp -r 0 5
          cp -r 0 6
          cp -r 0 7
          cp -r 0 8
          cp -r 0 9
          cd 1
          vim asn.cpp'
alias ZCF='cd ~/code/cook/
           rm -r 1 2 3 4 5 6 7 8 9
           cd ~'


