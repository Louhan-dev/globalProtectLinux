[[ "$UID" -ne '0' ]] && { echo "Root is required."; exit 1 ;}

#Install Dependencies
apt-get install libqt5webkit5

#Install GlobalProtect base
wget -P /tmp "https://people.cs.ksu.edu/~sgsax/files/gpvpn/GlobalProtect_deb-5.1.1.0-17.deb"
yes | dpkg -i /tmp/GlobalProtect_deb-5.1.1.0-17.deb
rm /tmp/GlobalProtect_deb-5.1.1.0-17.deb

#Install GlobalProtect UI
wget -P /tmp "https://people.cs.ksu.edu/~sgsax/files/gpvpn/GlobalProtect_UI_deb-5.1.1.0-17.deb"
yes | dpkg -i /tmp/GlobalProtect_UI_deb-5.1.1.0-17.deb
rm /tmp/GlobalProtect_UI_deb-5.1.1.0-17.deb
