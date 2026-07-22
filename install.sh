sudo apt update
sudo apt upgrade
sudo apt install hyprland waybar hyprpaper
sudo apt install git -y
git clone https://github.com/Jakobf-1/JsOS-Ubuntu- ~/tmp_jsos
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
