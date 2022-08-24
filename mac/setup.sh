echo "Creating sublime shortcut: 'subl'"
sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

echo "Changing default shell to bash: password will be required"
chsh -s /bin/bash
echo ""
echo "export BASH_SILENCE_DEPRECATION_WARNING=1" >> ~/.bash_profile

read -p "Overwriting ~/.bash_profile: are you sure?
> " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]] 
then
    echo "Overwriting..."
    cp bash_profile ~/.bash_profile
else
    echo "Cancelling..."
fi

source ~/.bash_profile

