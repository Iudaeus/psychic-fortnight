# Load asdf
. "$HOME/.asdf/asdf.sh"

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

zstyle :compinstall filename '/home/bryan/.zshrc'
zstyle ':completion:*:*:git:*' script ~/.zshrc/git-completion.bash

fpath=(~/.zsh $fpath)
fpath=(${ASDF_DIR}/completions $fpath)

autoload -Uz compinit && compinit
autoload -Uz vcs_info

precmd () {
  vcs_info
  zstyle ':vcs_info:git*' formats '(%F{blue}%b%f)'
  PS1="%F{103}%n@%m%f ${vcs_info_msg_0_} %F{124}%3~%f $ "
}
