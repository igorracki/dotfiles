
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias ll='eza --color=always --long --git --icons=always --all --total-size'
alias l='eza --color=always --long --git --icons=always --all'
alias vim='nvim'
alias notes='cd /Users/igor/Notes && nvim .'
alias cat='bat'

eval "$(fzf --zsh)"

export BAT_THEME="kanagawa"
