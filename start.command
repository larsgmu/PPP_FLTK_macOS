#! /bin/bash
echo " _     _____ ___  ___  _____                       _ _           ";
echo "| |   |  __ \|  \/  | /  __ \                     (_) |          ";
echo "| |   | |  \/| .  . | | /  \/ ___  _ __ ___  _ __  _| | ___ _ __ ";
echo "| |   | | __ | |\/| | | |    / _ \| '_ \` _ \| '_ \| | |/ _ \ '__|";
echo "| |___| |_\ \| |  | | | \__/\ (_) | | | | | | |_) | | |  __/ |   ";
echo "\_____/\____/\_|  |_/  \____/\___/|_| |_| |_| .__/|_|_|\___|_|   ";
echo "                                            | |                  ";
echo "                                            |_|                  ";
echo 
echo
echo "Welcome to NTNU FLTK Assigment Compiler."
sleep 2
echo "Initiating compile.."
echo "Compiling your application."


cd "$(dirname "$BASH_SOURCE")"
cp -a FLTK_1.3.4-2/lib/*.dylib /usr/local/lib/
cp -a FLTK_1.3.4-2/dependencies/*.dylib /usr/local/lib/
g++ -w -Wall -std=c++11 Graph_lib/Graph.cpp Graph_lib/Window.cpp Graph_lib/GUI.cpp Graph_lib/Simple_window.cpp main.cpp -L. -L$(pwd)/FLTK_1.3.4-2/lib -lfltk_images -lfltk -lpng -lz -ljpeg -lpthread -framework Cocoa -I. -I$PWD/FLTK_1.3.4-2/includes -o hello_fltk

echo
echo
echo "Compile success!"
Sleep 1
Echo "Opening your program"

./hello_fltk
