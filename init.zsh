if (( ! ${+commands[rustup]} || ! ${+commands[cargo]} )); then
  return 1
fi

if [[ ! -f "${0:h}/functions/_rustup" ]]; then
  rustup completions zsh > "${0:h}/functions/_rustup"
fi
