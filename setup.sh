#!/bin/sh
#

## Directories
POLY_DIR="$HOME/.config/polybar/"
I3_DIR="$HOME/.config/i3/"
FISH_DIR="$HOME/.config/fish/"
KITTY_DIR="$HOME/.config/kitty/"
MUTT_DIR="$HOME/.config/mutt/"
NEOFETCH_DIR="$HOME/.config/neofetch/"
NVIM_DIR="$HOME/.config/nvim/"
FONT_DIR="$HOME/.local/share/fonts"
ROFI_DIR="$HOME/.config/rofi"

DIR="$HOME/RAS/"

## messafe to user 
echo "installing system"

## Functions
install_polybar(){
	if [[ -d "$POLY_DIR" ]]; then
		
		cp -rf $DIR/polybar/* "$POLY_DIR"
	fi
		mkdir -p "$POLY_DIR"
		cp -rf $DIR/polybar/* "$POLY_DIR"

	}
install_fish(){
	if [[ -d "$FISH_DIR" ]]; then
		
		cp -rf $DIR/fish/* "$FISH_DIR"
	fi
		mkdir -p "$FISH_DIR"
		cp -rf $DIR/fish/* "$FISH_DIR"

	}

install_kitty(){
	if [[ -d "$KITTY_DIR" ]]; then
		
		cp -rf $DIR/kitty/* "$KITTY_DIR"
	fi
		mkdir -p "$KITTY_DIR"
		cp -rf $DIR/kitty/* "$KITTY_DIR"

	}

install_mutt(){
	if [[ -d "$MUTT_DIR" ]]; then
		
		cp -rf $DIR/mutt/* "$MUTT_DIR"
	fi
		mkdir -p "$MUTT_DIR"
		cp -rf $DIR/mutt/* "$MUTT_DIR"

	}

install_neofetch(){
	if [[ -d "$NEOFETCH_DIR" ]]; then
		
		cp -rf $DIR/neofetch/* "$NEOFETCH_DIR"
	fi
		mkdir -p "$NEOFETCH_DIR"
		cp -rf $DIR/neofetch/* "$NEOFETCH_DIR"

	}

install_i3(){
	if [[ -d "$I3_DIR" ]]; then
		
		cp -rf $DIR/i3/* "$I3_DIR"
	fi
		mkdir -p "$I3_DIR"
		cp -rf $DIR/i3/* "$I3_DIR"

	}

install_nvim(){
	if [[ -d "$NVIM_DIR" ]]; then
		
		cp -rf $DIR/nvim/* "$NVIM_DIR"
	fi
		mkdir -p "$NVIM_DIR"
		cp -rf $DIR/nvim/* "$NVIM_DIR"

	}
	# Install Fonts
install_fonts() {
	if [[ -d "$FONT_DIR" ]]; then
		cp -rf $DIR/fonts/* "$FONT_DIR"
	fi	
		mkdir -p "$FONT_DIR"
		cp -rf $DIR/fonts/* "$FONT_DIR"
}

# Install Themes
install_themes() {
	if [[ -d "$ROFI_DIR" ]]; then
	{ mkdir -p "$ROFI_DIR"; cp -rf $DIR/files/* "$ROFI_DIR"; }

}

move_pictures() {
	mv Pictures/ ~/  
}



	

## main 
	main() {

		sudo pacman -Syu
		sudo pacman -S polybar fish kitty neomutt neofetch neovim nerd-fonts mpv firefox btop picom feh sxiv xorg-server zathura zathura-pdf-mupdf lf unzip
		install_polybar
		install_i3
		install_fish
		install_kitty
		install_mutt
		install_neofetch
		install_nvim
		move_pictures

	}

	main

	
