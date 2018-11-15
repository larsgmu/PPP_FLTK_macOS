#! /bin/bash

cd "$(dirname "$BASH_SOURCE")"
g++ -w -Wall -std=c++11 Graph_lib/Graph.cpp Graph_lib/Window.cpp Graph_lib/GUI.cpp Graph_lib/Simple_window.cpp main.cpp -L$PWD/FLTK_1.3.4-2/lib -lfltk_images -lpng -lz -ljpeg -lfltk -lpthread -framework Cocoa -o hello_fltk
./hello_fltk
