#3
[ "$NAVE_DEBUG" != "" ] && set -x || true
if [ "$BASH" != "" ]; then
  if [ "$NAVE_LOGIN" != "" ]; then
    [ -f ~/.bash_profile ] && . ~/.bash_profile || true
    [ -f ~/.bash_login ] && .  ~/.bash_login || true
    [ -f ~/.profile ] && . ~/.profile || true
  else
    [ -f ~/.bashrc ] && . ~/.bashrc || true
  fi
else
  [ -f ~/.zshenv ] && . ~/.zshenv || true
  export DISABLE_AUTO_UPDATE=true
  if [ "$NAVE_LOGIN" != "" ]; then
    [ -f ~/.zprofile ] && . ~/.zprofile || true
    [ -f ~/.zshrc ] && . ~/.zshrc || true
    [ -f ~/.zlogin ] && . ~/.zlogin || true
  else
    [ -f ~/.zshrc ] && . ~/.zshrc || true
  fi
fi
unset ZDOTDIR
export PATH=$NAVEPATH:$PATH
[ -f ~/.naverc ] && . ~/.naverc || true
