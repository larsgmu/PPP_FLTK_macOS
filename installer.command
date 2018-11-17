#! /bin/bash

echo "  _______ _____ _______   _  _  __  ___ ___    _____           _        _ _           ";
echo " |__   __|  __ \__   __| | || |/_ |/ _ \__ \  |_   _|         | |      | | |          ";
echo "    | |  | |  | | | |    | || |_| | | | | ) |   | |  _ __  ___| |_ __ _| | | ___ _ __ ";
echo "    | |  | |  | | | |    |__   _| | | | |/ /    | | | '_ \/ __| __/ _\` | | |/ _ \ '__|";
echo "    | |  | |__| | | |       | | | | |_| / /_   _| |_| | | \__ \ || (_| | | |  __/ |   ";
echo "    |_|  |_____/  |_|       |_| |_|\___/____| |_____|_| |_|___/\__\__,_|_|_|\___|_|   ";
echo "                                                                                      ";
echo "                                                                                      ";
Echo
Echo


Echo Welcome to TDT4102 assignment dependencies installer. 
Sleep .5
Echo This installer will install all the packages you will need.
Sleep 1
Echo When the installer begins it will ask you to press RETURN - do it when it asks.
Echo The installer might ask you to type in your password a couple of times to continue the installation, so keep an eye on the
Echo installer.
Echo
Echo

                                                                                             
Sleep 1
while true; do
    read -p "Do you start the installation? (yes/no): " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) echo "Installation cancelled.";exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

Echo

Echo "Good, installing dependencies."
Sleep .5

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install fltk libpng libjpeg

Echo
Echo
echo "______ _____ _   _  _____ _ ";
echo "|  _  \  _  | \ | ||  ___| |";
echo "| | | | | | |  \| || |__ | |";
echo "| | | | | | | . \` ||  __|| |";
echo "| |/ /\ \_/ / |\  || |___|_|";
echo "|___/  \___/\_| \_/\____/(_)";
echo "                            ";
echo "                            ";
Echo
Echo
echo "All dependencies for FLTK is now installed, you can now run the executable "
Echo "named start.command and close this window."
Echo
Echo


