export ZPLUG_HOME=$HOME/.zplug
source $ZPLUG_HOME/init.zsh 
zplug "b4b4r07/enhancd", use:init.sh
zplug "mollifier/anyframe", at:4c23cb60
zplug "zsh-users/zsh-syntax-highlighting"

# return whether the plugin is installed
zplug_installed() { # {{{
  local plugins
  plugins=$(zplug list)
  if [[ `echo $plugins | grep $1` ]];
  then 
    return 0;
  else
    return 1;
  fi
} # }}}

# install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then # {{{
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
zplug load --verbose
# }}}

# preferences for each plugin
if zplug_installed "hchbaw/auto-fu.zsh"; # {{{
then
  zle_line_init(){
    auto-fu-init
  }
  zle -N zle_line_init
  # zstyle ':auto-fu:highlight' input bold
  # zstyle ':auto-fu:highlight' completion fg=black,bold
  # zstyle ':auto-fu:highlight' completion/one fg=white,bold,underline
  # zstyle ':auto-fu:var' postdisplay $''
  # zstyle ':auto-fu:var' track-keymap-skip opp
  # zstyle ':auto-fu:var' disable magic-space
fi # }}}

