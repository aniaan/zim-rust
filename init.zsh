if (( ! ${+commands[rustup]} && ! ${+commands[cargo]} )); then
  return 1
fi

fpath=("${0:h}/functions" $fpath)

if [[ ! -f "${0:h}/functions/_rustup" ]]; then
  rustup completions zsh > "${0:h}/functions/_rustup"
fi
autoload -Uz _rustup
autoload -Uz _cargo

