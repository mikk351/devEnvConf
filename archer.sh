sudo pacman -S chromium flameshot code atom docker nodejs npm yaourt xclip python-pip fish --noconfirm

chsh -s /usr/bin/fish # Set deffault shell

# install? flatpak
yaourt -S spotify sublime-text-dev --noconfirm
#yaourt -S pulseaudio-dlna --noconfirm

# SmartCard
yaourt -S qdigidoc4 chrome-token-signing --noconfirm
sudo systemctl enable pcscd && sudo systemctl start pcscd


sudo systemctl enable docker
sudo systemctl start docker

# Local pip and npm
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'

# Add user bin to path $HOME/.local/bin
printf '#!/bin/bash\nPATH=$PATH:$HOME/.local/bin:$HOME/.npm-global\n' | sudo tee -a /etc/profile.d/custom.sh > /dev/null
source /etc/profile.d/custom.sh
# sudo chmod a+x /etc/profile.d/ # ubuntus

# For fish
#printf '\nset -gx PATH $PATH:$HOME/.local/bin:$HOME/.npm-global/bin\n' | tee -a ~/.config/fish/config.fish > /dev/null
# rm ~/.config/autostart/create-template.desktop # generates empty files

pip install --user docker-compose
sudo npm install -g @angular/cli @vue/cli http-server