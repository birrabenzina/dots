# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/birrabenzina/.oh-my-zsh"
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
	source /etc/profile.d/vte.sh
fi
cat $HOME/.cache/wal/sequences
#wal -qi $HOME/Pictures/FB_IMG_1423498454626.jpg -n
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="fox"
ZSH_THEME="drunkfox"

neofetch --kernel_shorthand off --disk_percent on --memory_percent on --underline on --underline_char = --ascii_bold on --os_arch off --uptime_shorthand tiny --package_managers tiny
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions history-substring-search zsh-syntax-highlighting)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=white'
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='nvim'
else
	export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
set -o vi
# Example aliases
alias ls="ls --color=auto"
alias zshrc="nvim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias i3rc="nvim ~/.config/i3/config"
alias i3f="cd ~/.config/i3 && ls"
alias picomrc="nvim ~/.config/picom/picom.conf"
alias za="zathura"
alias nv="nvim"
alias nem="cd ~/Dropbox/appunti/electromagnetism && ls"
alias nt="cd ~/Dropbox/appunti/ && ls"
alias drop="cd ~/Dropbox/ && ls"
alias cryp="openssl aes-256-cbc -in"
alias dcryp="openssl aes-256-cbc -d -in"
alias pubip="wget http://checkip.dyndns.org/ -O - -o /dev/null | cut -d: -f 2 | cut -d\< -f 1"
alias polyrc="nvim ~/.config/polybar/config"
alias statusrc="nvim ~/.config/i3status/config"
#alias ohmyzsh="mate ~/.oh-my-zsh"
# Remove orphaned packages.
# Needs single quotes, otherwise the newlines that "pacman -Qqdt" outputs
# cause trouble.
# The parentheses create a subshell meaning "set -x" that prints the executed
# Bash commands is unset when the subshell exits at the end of the command.
# Arguments to "pacman -Q":
#    -d restrict output to packages installed as dependencies
#    -t list packages that are no longer required by any installed package
#    -q suppress version numbers of packages (this would confuse pacman -R)
alias clean-orphans='(set -x; sudo pacman -Rs $(pacman -Qdtq))'
alias clean-aur-orphans='(set -x; yay -Rs $(yay -Qdtq))'
