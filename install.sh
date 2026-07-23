sudo apt update

sudo apt upgrade

sudo apt install flatpak

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub org.mozilla.firefox
flatpak install flathub com.spotify.Client

sudo apt install curl

echo -n "Would you like to install ollama with SmolLM2? [y/n]: "
read answer

if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
    echo "Installing Ollama + SmolLM2..."
    curl -fsSL https://ollama.com/install.sh | sh
    ollama run SmolLM2
else
    echo "Skipped Ollama install."
fi

hyprland waybar hyprpaper kitty dolphin firefox

sudo apt install git -y

git clone https://github.com/Jakobf-1/JsOS-Ubuntu- ~/tmp_jsos

cp -r ~/tmp_jsos/* ~/.config/

sudo systemctl disable gdm3

cat > ~/.bash_profile <<'EOF'
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec Hyprland
fi
EOF

cat > /dog.scr <<'EOF'
      JJJJJJ    SSSSSS    OOOOOO    SSSSSS
        JJ     SS    SS  OO    OO  SS    SS
        JJ     SS        OO    OO  SS
  JJ    JJ      SSSSSS   OO    OO   SSSSSS
  JJ    JJ           SS  OO    OO        SS
  JJ    JJ    SS    SS   OO    OO  SS    SS
   JJJJJJ      SSSSSS     OOOOOO    SSSSSS
EOF

echo "Finished installing JsOS! Restarting in 3 seconds!"
sleep 3
reboot
