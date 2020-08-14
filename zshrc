# --------------------------------------------------------------------------------------------- #
# ----------------------------------------------  zsh ----------------------------------------- #
export ZSH=~/.oh-my-zsh
export ZSH_CUSTOM=${ZSH}/custom
export ZSH_THEME=${ZSH}/themes
# auto-update
DISABLE_AUTO_UPDATE="false"
# how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# skip the verification of insecure directories
ZSH_DISABLE_COMPFIX=true

plugins=(git osx zsh-syntax-highlighting zsh-completions zsh-autosuggestions autojump)

[ -e ${HOME}/.zshrc_appearance ] && source ${HOME}/.zshrc_appearance
source $ZSH/oh-my-zsh.sh

# source customized configuration in the end to avoid oh-my-zsh overwrite
for file in ~/.{alias,func,zshrc_zle,zshrc_local}; do
    [ -e ${file} ] && source ${file}
done;



# --------------------------------------------------------------------------------------------- #
# ---------------------------------------  General Settings ----------------------------------- #
export PATH=~/.local/bin:$PATH
export PATH=~/.local/diff-so-fancy:$PATH

export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export PYTHONIOENCODING='UTF-8';
export EDITOR='vim'

export HISTSIZE=32768
# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL='ignoreboth';

export LSCOLORS=ExFxCxDxBxegedabagacad # ls color
export LESS='-iMs'  # -i: ignore case at search; -M: more information; -s: combine multiple blank lines into one line, -C:...

export HOMEBREW_NO_AUTO_UPDATE=1    # https://github.com/Homebrew/brew/issues/1670
export VIMRC=$HOME/.vim_runtime/vimrcs

# prevent > overwriting existent file
# using >| for write forcedly
# set -o noclobber



# --------------------------------------------------------------------------------------------- #
# ------------------------------  Plugin/Extension Configuration ------------------------------ #
# zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)
fpath=(${ZSH_CUSTOM}/themes/spaceship-prompt $fpath)
# fzf
# https://github.com/junegunn/fzf/wiki/Configuring-shell-key-bindings
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --extended --cycle"
# export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --extended --cycle --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# tldr
export TLDR_COLOR_BLANK="white"
export TLDR_COLOR_NAME="cyan"
export TLDR_COLOR_DESCRIPTION="white"
export TLDR_COLOR_EXAMPLE="green"
export TLDR_COLOR_COMMAND="red"
export TLDR_COLOR_PARAMETER="white"
export TLDR_CACHE_ENABLED=1

# thefuck
eval $(thefuck --alias)

# cheat
# https://github.com/chubin/cheat.sh
fpath=(~/.zsh.d/ $fpath)
export CHEATCOLORS=true



# --------------------------------------------------------------------------------------------- #
# ------------------------------  macOS Specified Configuration ------------------------------- #
if [[ "$OSTYPE" == "darwin"* ]]; then
		# nnn
		export NNN_BMS='t:~/Documents/Notes;d:~/Desktop;D:~/Downloads'
fi

echo "Oh My Zsh!"  # Welcome
