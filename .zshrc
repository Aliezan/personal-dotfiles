
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git 
  zsh-autosuggestions 
  zsh-syntax-highlighting 
  you-should-use 
  )

source $ZSH/oh-my-zsh.sh


alias zshconf="nvim ~/.dotfiles/.zshrc"
alias tmuxconf="nvim ~/.dotfiles/.tmux.conf"
alias zshsource="source ~/.dotfiles/.zshrc"
alias dotfiles="nvim ~/.dotfiles"
alias pn="pnpm"
alias nvimconf="nvim ~/.config/nvim" 
alias v="nvim"
alias c="code"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


# pnpm
export PNPM_HOME="/home/aliezan/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


export WSL_HOST=$(tail -1 /etc/resolv.conf | cut -d' ' -f2)
 

export GOROOT=/snap/go/current
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export TERM=xterm-256color
eval "$(starship init zsh)"
eval "$(zellij setup --generate-auto-start zsh)"
