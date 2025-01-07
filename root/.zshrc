eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

alias short="cat ~/.zshrc"
alias ae="nvim ~/.zshrc"
alias ar="source ~/.zshrc"

alias ak="nvim ~/.config/alacritty/alacritty.toml"

alias todo="nvim ~/.config/todo.md"

alias cat='bat --paging=never'

alias la="lsd -al"
alias cls="clear"
alias find_large="du -sh * | sort -hr | head -n 100"

alias vi="nvim"
alias vim="nvim"
alias nv="nvim"

alias gco="git checkout"
alias gcam="git commit -am"
alias gpu="git push"
alias gs="git status"

alias tk="nvim ~/.tmux.conf"
alias ta="tmux a"
alias tko="tmux kill-server "
alias ts="tmux-search"

alias rshell="exec $SHELL -l"

# bindkey -v

source $HOMEBREW_PREFIX/share/antigen/antigen.zsh

# Load oh-my-zsh library
antigen use oh-my-zsh

# Non oh-my-zsh plugins
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

# oh-my-zsh plugins
antigen bundle 'yuhonas/zsh-aliases-lsd'
antigen bundle command-not-found
antigen bundle history-substring-search
antigen bundle jeffreytse/zsh-vi-mode


antigen apply

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR=nv
export FZF_CTRL_C_COMMAND="true"
export FZF_DEFAULT_OPTS="--tmux --layout reverse --border top"
export FZF_CTRL_T_OPTS="--tmux --layout reverse --border top --preview 'bat --color=always {}' --preview-window '~3'"

fbat() {
  local file
  file=$(fzf --preview='bat --style=numbers --color=always {}')
  if [[ -n "$file" ]]; then
    bat "$file" --paging=never
  fi
}


export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/opt/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/opt/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

