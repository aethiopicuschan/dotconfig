# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# starship
eval "$(starship init fish)"

# WeZTerm
fish_add_path /Applications/WezTerm.app/Contents/MacOS

# GNU系ツール
fish_add_path /opt/homebrew/opt/coreutils/libexec/gnubin
fish_add_path /opt/homebrew/opt/grep/libexec/gnubin
fish_add_path /opt/homebrew/opt/gnu-sed/libexec/gnubin
set -gx GPG_TTY $(tty)

# ls
set -gx LSCOLORS "Gxfxcxdxbxegedabagacad"
alias ls='ls -a --color=auto'

# curl
fish_add_path /opt/homebrew/opt/curl/bin

# Python
set -gx PYTHONDONTWRITEBYTECODE 1
# rye
fish_add_path $HOME/.rye/shims

# Node.js
set -gx PNPM_HOME "/Users/aethiopicuschan/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  fish_add_path "$PNPM_HOME"
end

# Rust
fish_add_path $HOME/.cargo/bin

# Go
set -gx GOPRIVATE "github.com/aethiopicuschan"
set -gx GOPATH $HOME/go
set -gx GOBIN $GOPATH/bin
fish_add_path $GOBIN

# キーバインド
function fish_user_key_bindings
  bind \cr peco_select_history
end
