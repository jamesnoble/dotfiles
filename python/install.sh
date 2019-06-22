if type apt-get &> /dev/null
then
    sudo apt-get --assume-yes install python
    sudo apt-get --assume-yes install python-setuptools
fi

if ! type pip &> /dev/null
then
    sudo easy_install pip
fi
sudo pip install pylint
