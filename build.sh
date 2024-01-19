#!/bin/bash
# apt install gobjc++
gcc $(pkg-config --cflags gtk+-3.0) -o app-1 app.cpp $(pkg-config --libs gtk+-3.0)
