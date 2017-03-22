# --------------------
# ZPLUG
source ~/.zplug/init.zsh

# Define plugins
zplug "zsh-users/zsh-history-substring-search"

zplug "mollifier/cd-gitroot"

zplug "stedolan/jq", from:gh-r. as:command \
	| zplug "b4b4r07/emoji-cli", if:"which jp"

# リビジョンロック機能を持つ
zplug "b4b4r07/enhancd"
zplug "mollifier/anyframe"

# Gist ファイルもインストールできる
zplug "b4b4r07/79ee61f7c140c63d2786", \
	from:gist, \
	as:command, \
	use:get_last_pane_path.sh

# bitbucket も
zplug "b4b4r07/hello_bitbucket", \
	from:bitbucket, \
	as:command, \
	use:"*.sh"

# 未インストール項目をインストールする
if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi

zplug load --verbose

# --------------------
zstyle ':completion:*:default' menu select=2

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

# cd by directory name
# setopt auto_pushd

# Use color
# autoload -Uz colors; colors
# Use completion
autoload -U compinit; compinit

# sync history
setopt share_history

# --------------------
# PATH
# to ~/local/bin
export PATH=${HOME}/local/bin:${PATH}

# --------------------
# PROMPT
PROMPT='[%F{cyan}%*%f] %n@%~
$ '

# --------------------
# ALIAS

# ls
alias la='ls -a'
alias ll='ls -l'

# mkdir
alias mkdir='mkdir -p'

# --------------------
