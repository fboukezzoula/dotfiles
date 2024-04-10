#!/bin/bash

PLUGINS_FOLDER="$HOME/.oh-my-zsh/plugins"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
	echo "Getting ohmyz.sh"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc --skip-chsh

	# Install autosuggesions plugin
	if [ -d "$PLUGINS_FOLDER/zsh-autosuggestions" ]; then rm -Rf "$PLUGINS_FOLDER/zsh-autosuggestions"; fi
	git clone https://github.com/zsh-users/zsh-autosuggestions.git $PLUGINS_FOLDER/zsh-autosuggestions

	# Install azsh-syntax-highlighting plugin
	if [ -d "$PLUGINS_FOLDER/zsh-syntax-highlighting" ]; then rm -Rf "$PLUGINS_FOLDER/zsh-syntax-highlighting"; fi
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $PLUGINS_FOLDER/zsh-syntax-highlighting

	# Install zsh-fast-syntax-highlighting plugin
	if [ -d "$HOME/.oh-my-zsh/custom/plugins/fast-syntax-highlighting" ]; then rm -Rf "$HOME/.oh-my-zsh/custom/plugins/fast-syntax-highlighting"; fi
	git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

	# Install zsh-autocomplete plugin
	if [ -d "$PLUGINS_FOLDER/zsh-autocomplete" ]; then rm -Rf "$PLUGINS_FOLDER/zsh-autocomplete"; fi
	git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $PLUGINS_FOLDER/zsh-autocomplete

else
	echo ".oh-my-zsh already found, skipping."
fi
