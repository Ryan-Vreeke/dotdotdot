# dotdotdot
Linux Dot Files and other config

# Installs
    `sudo pacman -S zsh neofetch lazygit dotnet-sdk dotnet-runtime aspnet-runtime kitty`

## Git
### Oh My Zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)

### Oh My Pluggins
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

### Lunar Vim
	LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
	
### Kitty Themes
	git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes

1. 
		git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes

2.
		ln -s ~/.config/kitty/kitty-themes/themes/Afterglow.conf ~/.config/kitty/theme.conf
		
3.
		echo "include ./theme.conf" > ~/.config/kitty/kitty.config