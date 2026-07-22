sudo apt update
sudo apt upgrade
sudo apt install hyprland waybar hyprpaper kitty dolphin firefox
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
echo "Finished installing JsOS! Restarting in 3 seconds!"
sleep 3
reboot
