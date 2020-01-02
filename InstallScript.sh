# Set the below variables for installation of whatever you need.
# Note, if it is set to 1 then it will be installed.
# Else it will be skipped over.

#Node, NPM and Yarn Installations

Node=0
Yarn=0
Python=0
SDKman=0

# ---------------- Don't Edit Below This line ------------------

function installX() {
    apt-get update &>/dev/null
    apt-get -qq install $@ &>/dev/null #Install everything passed to this and do not show the output.
}

# ------------------ Non-Function Area -------------------------
echo "Dev Installer Running... "

echo "Updating Cache..."

apt-get update &>/dev/null

# --- Curl: Needed for various Activites for downloading scripts and other things.
if ! type curl &>/dev/null; then
    echo "Installing Curl..."
    installX curl
else
    echo "Curl Has Already Been Installed!"
fi

# --- Node npm yarn section
if [ $Node -eq 1 ]; then
    echo "Installing Node 12 along with Npm..."
    curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh
    bash nodesource_setup.sh &>/dev/null
    installX nodejs npm
    rm nodesource_setup.sh
    echo "Nodejs and npm has been Installed!"
else
    echo "Skipping Installation of Node"
fi

if [$Yarn -eq 1]; then
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
    installX yarn
else
    echo "Skipping Installation of Yarn"
fi

# --- Python

# Installs Pyenv

if [ $Python -eq 1 ]; then
    curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
    exec $SHELL
else
    echo "Skipping Installation of Pyenv manager"
fi

# --- SDKman

# Installs SDKman 

if [$SDKman -eq 1]; then
    curl -s "https://get.sdkman.io" | bash
    source "$HOME/.sdkman/bin/sdkman-init.sh"
else
    echo "Skipping installation of SDKman"
fi