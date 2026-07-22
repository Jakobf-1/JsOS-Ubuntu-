sudo apt update
sudo apt upgrade
sudo apt install hyprland
sudo apt install waybar
sudo apt install hyprpaper
sudo apt install git -y
git clone https://github.com ~/tmp_jsos
cp -r ~/tmp_jsos/* ~/.config/
sudo systemctl disable gdm3
cat > ~/.bash_profile <<'EOF'
# Load .bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Auto-start Hyprland on tty1
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec Hyprland
fi
EOF
