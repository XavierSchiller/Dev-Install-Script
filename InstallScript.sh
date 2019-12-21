Node=1


echo "Dev Installer Running... "

if ! type "$curl" &> /dev/null then
    echo "Installing Curl..."
    apt install curl -y 1&2> /dev/null
else
    echo "Curl Has Already Been Installed"
fi

if [ Node -eq 0 ]; then
    echo "Installing node"
    curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh
    bash nodesource_setup.sh > /dev/null
    apt-get -qq update > /dev/null
    apt-get install nodejs -y > /dev/null
    echo "Nodejs Has been Installed." 
else
    echo "Skipping Installation of Node"
fi
