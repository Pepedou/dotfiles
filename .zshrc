# Lines configured by zsh-newuser-install
HISTFILE=~/.zhistory
HISTSIZE=5000
SAVEHIST=5000
setopt autocd extendedglob notify
setopt appendhistory sharehistory incappendhistory  # Enable shared and persistent history
bindkey -v                                          # Enable vim mode

# The following lines were added by compinstall
zstyle :compinstall filename '/home/pepedou/.zshrc'
autoload -Uz compinit
autoload -U colors && colors
compinit
# End of lines added by compinstall

# Set prompt and generic global variables
export PATH=/usr/local/pycharm-community-2019.3.3/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
PROMPT="%n@%m:%~%(!.#.$) "
EDITOR=/usr/bin/vim

# LS colors and prompt
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'

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
