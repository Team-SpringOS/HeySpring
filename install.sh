# removing ubuntu's stuff
sudo apt remove --purge -y ubuntu-desktop
sudo apt remove --purge -y ubuntu-desktop-minimal
sudo apt remove --purge -y snap*

# adding required repos
sudo add-apt-repository ppa:mozillateam/ppa -y

# changing apt preferances
sudo mv ./aptPref/SpringOS-defaults.pref /etc/apt/preferences.d/

# installing nala (a better frontend for apt)
sudo apt install nala -y

# setting best mirrors for apt
sudo nala fetch --auto
sudo nala update && sudo nala upgrade -y

# Install Flatpak
sudo nala install flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# install vanilla gnome
sudo nala install vanilla-gnome-desktop vanilla-gnome-default-settings gnome-software gnome-software-plugin-flatpak firefox -y --no-install-recommends

# editing release file
sudo cp /etc/os-release etc/os-release-backup

# setting spring theme

# setting extensions

# setting removing ubuntu branding
