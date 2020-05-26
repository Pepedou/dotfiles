# Lines configured by zsh-newuser-install
HISTFILE=~/.zhistory
HISTSIZE=5000
SAVEHIST=5000
setopt autocd extendedglob notify
setopt appendhistory sharehistory incappendhistory  # Enable shared and persistent history
bindkey -v                                          # Enable vim mode

# z fuzzy cd https://github.com/agkozak/zsh-z
source $HOME/.zsh-z.plugin.zsh

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
alias ls='ls --color=auto -N' # Use the -N to remove annoying '' around filenames with spaces
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

# HSTR configuration - add this to ~/.zshrc
alias hh=hstr                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       # get more colors
bindkey -s "\C-r" "hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)

# Easily open .zshrc
alias zconf="$EDITOR $HOME/.zshrc && source $HOME/.zshrc"
