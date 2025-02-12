# prompt
autoload -U colors && colors
PS1=" %{$fg[cyan]%}%~ %{$reset_color%}
%{$fg[red]%}(container)> %{$reset_color%}"
setopt no_beep

# compile command
alias wcc='cc -Wall -Wextra -Werror'

# valgrind
alias vl='valgrind --leak-check=full --show-leak-kinds=all'

# norminette
alias norm='norminette'

# 42formatter
format() { for file in "$@"; do c_formatter_42 "$file"; done; }

# 42header
header() { for file in "$@"; do vim "$file" -c "Stdheader" -c "wq"; done; }
export USER='set your user name'
export MAIL='set your email'
