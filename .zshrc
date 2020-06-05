# Lines configured by zsh-newuser-install
HISTFILE=~/.zhistory
HISTSIZE=5000
SAVEHIST=5000
setopt autocd extendedglob notify
setopt appendhistory sharehistory incappendhistory  # Enable shared and persistent history
bindkey -v                                          # Enable vim mode

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

export FZF_DEFAULT_OPTS="--reverse --inline-info"

# The following lines were added by compinstall
zstyle :compinstall filename '/home/pepedou/.zshrc'
# When pressing tab, highlight entries in the menu
zstyle ':completion:*' menu select
# Match against different cases
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
autoload -Uz compinit && compinit
autoload -U colors && colors
# End of lines added by compinstall

# Set prompt and generic global variables
PROMPT="%(?..[%?] )%n@%m:%~%(!.#.$) "
EDITOR=/usr/bin/vim

# LS colors and prompt
alias ls='ls -l --color=auto -N' # Use the -N to remove annoying '' around filenames with spaces
alias ll='ls -l'
alias la='ls -la'

# Top to htop
type htop >/dev/null 2>&1 && alias top=htop

# Open alias
alias open=xdg-open

# User systemctl shortcut
alias sys="systemctl"
alias sysu="systemctl --user"
alias jrnl="journalctl"
alias jrnlu="journalctl --user"

# Add alias for handling dotfiles
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"

# GPG/SSH agent stuff
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

# Shutdown alias
alias shu='shutdown now'

# Easily open .zshrc
alias zconf="$EDITOR $HOME/.zshrc && source $HOME/.zshrc"
export TERMINAL=/usr/bin/gnome-terminal
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Fuzzy search pacman packages
alias pacs="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
