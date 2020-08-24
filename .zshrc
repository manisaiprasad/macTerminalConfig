source ~/.zplug/init.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/manisaiprasad/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/manisaiprasad/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/manisaiprasad/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/manisaiprasad/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/manisaiprasad/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<< 

  # Set Spaceship ZSH as a prompt

SPACESHIP_PROMPT_ORDER=(
  time     #
  vi_mode  # these sections will be
  user     # before prompt char
  host     #
  char
  dir
  git
  node
  ruby
  xcode
  swift
  golang
  docker
  venv
  pyenv
) 
# USER
SPACESHIP_USER_PREFIX="manisaiprasad" # remove `with` before username
SPACESHIP_USER_SUFFIX="" # remove space before host

# HOST
# Result will look like this:
#   username@:(hostname)
SPACESHIP_HOST_PREFIX="@MacbookPro:("
SPACESHIP_HOST_SUFFIX=") "

  autoload -U promptinit; promptinit
  prompt spaceship
