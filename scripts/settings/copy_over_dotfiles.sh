TIMESTAMP=$(date +%s)
mkdir -p "$HOME/.wdi/backups_$TIMESTAMP"

for FILEPATH in "${DOTFILES[@]}"; do

  DOTFILE=".$(basename $FILEPATH)"

  if [[ -a "$HOME/$DOTFILE" ]] && [[ ! $DOTFILE == *"NOT-USING"* ]]; then
    cp "$HOME/$DOTFILE" "$HOME/.wdi/backups_$timestamp/$DOTFILE"
  fi

  cp "$FILEPATH" "$HOME/$DOTFILE"
done
