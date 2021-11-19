# General
sudo apt update
sudo apt upgrade -y
sudo apt-get install -y dirmngr gnupg wget apt-transport-https software-properties-common zip unzip

# Python
sudo apt install -y python3.8

# C++
sudo apt install -y g++

# Java
sudo apt install -y default-jdk

# C
sudo apt install -y build-essential gcc

# Javascript
sudo apt install -y nodejs

# C#
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

# Rust
sudo apt install -y rustc

# Bash
sudo apt install bash

# Powershell
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get install -y powershell
rm packages-microsoft-prod.deb

# PHP
sudo apt install -y php

# Kotlin
curl -s https://get.sdkman.io | bash
sdk install kotlin

# Go
wget https://dl.google.com/go/go1.17.3.linux-amd64.tar.gz
rm -rf /usr/local/go
tar -C /usr/local -xzf go1.17.3.linux-amd64.tar.gz
rm go1.17.3.linux-amd64.tar.gz

# Dart
sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
sudo apt update
sudo apt install -y dart

# Objective-C
sudo apt-get –y install gobjc gnustep gnustep-devel

# Ruby
sudo apt install -y ruby-full

# Lua
sudo apt install lua5.3

# R
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
sudo apt install r-base

# Perl
sudo apt install -y perl

# Scala
sudo apt install -y scala

# Visual Basic
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update

# Assembly
sudo apt install -y nasm

# SQL
sudo apt install -y sqlite3