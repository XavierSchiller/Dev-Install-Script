Node=1


echo "Dev Installer Running... "

if ! type "$curl" &> /dev/null; then
    echo "Installing Curl..."
    apt install curl -y &> /dev/null
else
    echo "Curl Has Already Been Installed!"
fi

if [ $Node -eq 0 ]; then
    echo "Installing Node 12 along with Npm..."
    curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh
    bash nodesource_setup.sh &> /dev/null
    apt-get -qq update &> /dev/null
    apt-get install nodejs npm -y &> /dev/null
    echo "Nodejs and npm has been Installed!" 
else
    echo "Skipping Installation of Node"
fi
