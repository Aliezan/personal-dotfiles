
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# zsh plugins
plugins=(
  git 
  zsh-autosuggestions 
  zsh-syntax-highlighting 
  you-should-use 
  )

source $ZSH/oh-my-zsh.sh


# aliases
alias zshrc="nvim ~/.dotfiles/.zshrc"
alias zshsrc="source ~/.dotfiles/.zshrc"
alias dotfiles="nvim ~/.dotfiles"
alias pn="pnpm"
alias b="bun"
alias nvimconf="nvim ~/.config/nvim" 
alias v="nvim"
alias c="code"
alias lg="lazygit"
alias ls="colorls -A --gs -t"
alias lst="tree -a -s -t -C -L 1"
alias nprd="npm run dev"
alias phpas="php artisan serve"
alias cou="composer update"
alias coi="composer install"
alias gk="gitkraken"
alias npkill="npx npkill"
alias spdtest="speedtest-cli"
alias z="zellij"
alias pnd="pnpm dev"
alias pnb="pnpm build"

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


# pnpm
export PNPM_HOME="/home/aliezan/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# WSL
export WSL_HOST=$(tail -1 /etc/resolv.conf | cut -d' ' -f2)


# Golang
export GOROOT="$(brew --prefix golang)/libexec"

export TERM=xterm-256color

# starship init
eval "$(starship init zsh)"


# zellij autostart
# eval "$(zellij setup --generate-auto-start zsh)"

# colorls config
source $(dirname $(gem which colorls))/tab_complete.sh
PATH=$PATH:$(ruby -e 'puts Gem.bindir')

# zoxide cd
eval "$(zoxide init --cmd cd zsh)"

# gh copilot aiias
eval "$(gh copilot alias -- zsh)"

export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH=$HOME/.local/bin:$PATH

if [ -e /home/aliezan/.nix-profile/etc/profile.d/nix.sh ]; then . /home/aliezan/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
. "/home/aliezan/.deno/env"
