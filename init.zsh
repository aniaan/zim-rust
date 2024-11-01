[[ -d ${HOME}/.cargo/bin ]] && path=(${HOME}/.cargo/bin ${path:#${HOME}/.cargo/bin})

(( ${+commands[rustup]} )) && () {
  local command=${commands[rustup]}
  local compfile="$1/functions/_rustup"
  if [[ ! -e "$compfile" || "$compfile" -ot "$command" ]]; then
    "$command" completions zsh >| $compfile
    print -u2 -PR "* Detected a new version of 'rustup'. Regenerated completions."
  fi
} "${0:h}"
