#! /bin/bash
echo 'Asus G14 Settup'
sudo pacman-key --recv-keys 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35
sudo pacman-key --finger 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35
sudo pacman-key --lsign-key 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35
sudo pacman-key --finger 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35

echo 'Installing Software'
yay -S zsh lazygit dotnet-sdk dotnet-runtime aspnet-runtime kitty ani-cli cargo python-pip nodejs neovim nvidia-dkms rog-control-center linux-g14 linux-g14-headers supergfxctl switcheroo-control asusctl power-profiles-daemon

echo 'Enabling Asus Software'
systemctl enable --now power-profiles-daemon.service

systemctl enable --now supergfxd
systemctl enable --now switcheroo-control

echo 'Uninstalling KDE Bloat'
sudo pacman -R konsole pace garuda-assistant yad garuda-setup-assistant reflector-simple garuda-settings-manager garuda-settings-manager-kcm garuda-welcome


echo 'Configuring Terminal'

rm ~/.bashrc ~/.bash_history ~/.bash_profile

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


rm ~/.zshrc
mv ./.zshrc ~/

echo 'Installing OhMyZsh Plugins'
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

