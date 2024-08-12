# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Zsh history
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000

## Keybindigs
bindkey -v
# bind UP and DOWN arrow keys to history substring search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up			
bindkey '^[[B' history-substring-search-down

# The following lines were added by compinstall
zstyle :compinstall filename '/home/pro/.zshrc'
autoload -Uz compinit 
compinit
# End of lines added by compinstall

## Plugins section: Enable fish style features
# Use syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Use history substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# Use auto suggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# My Theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# source /usr/share/zsh/p10k.zsh
# source /usr/share/zsh/p10k-portable.zsh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Prompt other themes
autoload -Uz promptinit
promptinit

# My defaults
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# My aliases
alias ls='ls --color=auto --group-directories-first'
alias lsl='ls -al'
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

