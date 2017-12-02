# Download and extract x64 Postman
curl -o ~/Downloads/postman.tar.gz https://dl.pstmn.io/download/latest/linux64
sudo tar -xf ~/Downloads/postman.tar.gz -C /opt
rm ~/Downloads/postman.tar.gz

# Create soft link to launcher script so that it's accessible from cli
sudo ln -s /opt/Postman/Postman /usr/bin/postman

# Point entry to Postman icon
cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

