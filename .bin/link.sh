#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

for dotfile in "${SCRIPT_DIR}"/.??* ; do
    [[ "$dotfile" == "${SCRIPT_DIR}/.git" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.github" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.DS_Store" ]] && continue

    ln -fnsv "$dotfile" "$HOME"
done

mkdir -p ~/.config/karabiner
touch ~/.config/karabiner/karabiner.json
touch ~/.config/starship.toml
ln -fnsv ${SCRIPT_DIR}/karabiner.json ~/.config/karabiner/karabiner.json
ln -fnsv ${SCRIPT_DIR}/starship.toml ~/.config/starship.toml
