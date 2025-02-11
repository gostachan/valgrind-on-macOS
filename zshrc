# prompt
autoload -U colors && colors
PS1=" %{$fg[cyan]%}%~ %{$reset_color%}
%{$fg[red]%}(container)> %{$reset_color%}"
setopt no_beep

# zsh
format() { for file in "$@"; do c_formatter_42 "$file"; done; }
alias norm='norminette'
alias wcc='cc -Wall -Wextra -Werror'
alias vl='valgrind --leak-check=full --show-leak-kinds=all'

# 42header
header() { for file in "$@"; do vim "$file" -c "Stdheader" -c "wq"; done; }
export USER='set your user name'
export MAIL='set your email'
