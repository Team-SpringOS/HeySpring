# removing ubuntu's stuff
sudo apt remove --purge -y ubuntu-desktop
sudo apt remove --purge -y ubuntu-desktop-minimal
sudo apt remove --purge -y snap*

# adding required repos
sudo add-apt-repository ppa:mozillateam/ppa -y

# changing apt preferances
sudo mv ./aptPreferences/SpringOS-defaults.pref /etc/apt/preferences.d/

# editing release file
sudo cp /etc/os-release /etc/os-release-backup
sudo mv /etc/os-release .

sed -i '/_URL=/d' os-release
sed -i '/VERSION="/d' os-release
sed -i '/PRETTY_NAME="/d' os-release
sed -i '/NAME="/d' os-release
echo HOME_URL=\"https://github.com/Team-SpringOS/HeySpring/\#heyspring\" >> os-release
echo SUPPORT_URL=\"https://github.com/Team-SpringOS/HeySpring/issues\" >> os-release
echo BUG_REPORT_URL=\"https://github.com/Team-SpringOS/HeySpring/issues\" >> os-release
echo PRETTY_NAME=\"SpringOS alpha1\" >> os-release
echo NAME=\"SpringOS\" >> os-release
echo VERSION=\"alpha1\" >> os-release

sudo mv ./os-release /etc/os-release

# installing nala (a better frontend for apt)
sudo apt install nala -y

# setting best mirrors for apt
sudo nala fetch --auto
sudo nala update && sudo nala upgrade -y

# multimedia codecs
sudo apt install ubuntu-restricted-addons -y

# Install Flatpak
sudo nala install flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# install vanilla gnome
sudo nala install vanilla-gnome-desktop vanilla-gnome-default-settings gnome-software gnome-software-plugin-flatpak firefox -y --no-install-recommends

# setting spring theme

# setting extensions

# setting removing ubuntu branding

# synth shell prompt
