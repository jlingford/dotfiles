# Aliases and configurations

export VISUAL=nvim
export EDITOR="$VISUAL"

alias hi="echo 'hello world'"
alias cat='cat'
alias bat='bat --style changes,header,grid,snip,numbers --line-range :20'
alias v='nvim'

# Moving to favourite folders/files
alias vimrc='cd ; cd ~/.config/nvim'
alias bashrc='cd ; cd ~/.config/omf'

# Fuzzy finder aliases with fzf
# se() { du -a ~/.config/* | awk '{print $2}' | fzf | xargs -r $EDITOR ;}
