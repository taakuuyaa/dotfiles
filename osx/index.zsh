action "OS Configuration..."
read "?   ❓ Do you want to update the system configurations? [y|N] " response
if [[ -z $response || $response =~ ^(n|N) ]]; then
  running "All done"
  exec "$SHELL";ok
  exit
fi


