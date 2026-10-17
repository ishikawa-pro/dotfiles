# bash / zsh 共通の環境設定

case ":${PATH}:" in
  *:"$HOME/.local/bin":*) ;;
  *) export PATH="$HOME/.local/bin:$PATH" ;;
esac

export EDITOR=nvim

if [ -x "$HOME/.local/bin/mise" ]; then
  if [ -n "$ZSH_VERSION" ]; then
    eval "$("$HOME/.local/bin/mise" activate zsh)"
  elif [ -n "$BASH_VERSION" ]; then
    eval "$("$HOME/.local/bin/mise" activate bash)"
  fi
fi
