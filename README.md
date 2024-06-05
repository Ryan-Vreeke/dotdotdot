# dotdotdot
Linux Dot Files and other config

# Installs
` sudo pacman -S zsh neofetch lazygit dotnet-sdk dotnet-runtime aspnet-runtime kitty ani-cli cargo node npm wl-clipboard`
## Node 
[Instruction](https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally). 
1. `mkdir ~/.npm-global`
2. `npm config set prefix '~/.npm-global`
3. add `export PATH=$HOME/.npm-global/bin:$PATH` to bashrc

## Git
1. `git config --global credential.helper store`

## Oh My Zsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

## Oh My Pluggins
`git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

## Kitty Themes
1. `git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes`
2. `git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes`
3. `ln -s ~/.config/kitty/kitty-themes/themes/Afterglow.conf ~/.config/kitty/theme.conf`
4. `echo "include ./theme.conf" > ~/.config/kitty/kitty.config`
