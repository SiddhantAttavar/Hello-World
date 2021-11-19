#!/bin/bash
# General
sudo apt update
sudo apt upgrade -y
sudo apt-get install -y dirmngr gnupg wget apt-transport-https software-properties-common zip unzip
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

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
sudo apt install mono-devel

# Rust
sudo apt install -y rustc

# Bash
sudo apt install bash

# Powershell
sudo apt-get install -y powershell

# PHP
sudo apt install -y php

# Kotlin
curl -s https://get.sdkman.io | bash
source ~/.sdkman/bin/sdkman-init.sh
sdk install kotlin

# Go
sudo apt install golang-go
# wget https://dl.google.com/go/go1.17.3.linux-amd64.tar.gz
# sudo rm -rf /usr/local/go
# sudo tar -C /usr/local -xzf go1.17.3.linux-amd64.tar.gz
# rm go1.17.3.linux-amd64.tar.gz
# echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
# source ~/.profil

# Swift
sudo apt install binutils git gnupg2 libc6-dev libcurl4 libedit2 libgcc-9-dev libpython2.7 libsqlite3-0 libstdc++-9-dev libxml2 libz3-dev pkg-config tzdata zlib1g-dev
wget https://swift.org/builds/swift-5.3.3-release/ubuntu2004/swift-5.3.3-RELEASE/swift-5.3.3-RELEASE-ubuntu20.04.tar.gz
wget https://swift.org/builds/swift-5.3.3-release/ubuntu2004/swift-5.3.3-RELEASE/swift-5.3.3-RELEASE-ubuntu20.04.tar.gz.sig
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys '7463 A81A 4B2E EA1B 551F  FBCF D441 C977 412B 37AD' '1BE1 E29A 084C B305 F397  D62A 9F59 7F4D 21A5 6D5F' 'A3BA FD35 56A5 9079 C068  94BD 63BC 1CFE 91D3 06C6' '5E4D F843 FB06 5D7F 7E24  FBA2 EF54 30F0 71E1 B235' '8513 444E 2DA3 6B7C 1659  AF4D 7638 F1FB 2B2B 08C4' 'A62A E125 BBBF BB96 A6E0  42EC 925C C1CC ED3D 1561' '8A74 9566 2C3C D4AE 18D9  5637 FAF6 989E 1BC1 6FEA'
gpg --verify swift-5.3.3-RELEASE-ubuntu20.04.tar.gz{.sig,}
tar -xvzf swift-5.3.3-RELEASE-ubuntu20.04.tar.gz -C ~
mkdir -p /usr/share/swift
sudo mv ~/swift-5.3.3-RELEASE-ubuntu20.04 /usr/share/swift
echo "export PATH=\$PATH@:/usr/share/swift/usr/bin" >> ~/.profile
source ~/.profile
rm swift-5.3.3-RELEASE-ubuntu20.04.tar.gz swift-5.3.3-RELEASE-ubuntu20.04.tar.gz.sig

# Dart
sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
sudo apt update
sudo apt install -y dart

# Objective-C
sudo apt-get  install -y gobjc gnustep gnustep-devel

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
wget https://downloads.lightbend.com/scala/2.13.4/scala-2.13.4.deb
sudo dpkg -i scala-2.13.4.deb
rm scala-2.13.4.deb

# Visual Basic
sudo apt install mono-vbnc
# sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list

# Assembly
sudo apt install -y nasm

# SQL
sudo apt install -y sqlite3

# General
rm packages-microsoft-prod.deb