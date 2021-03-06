#!/bin/bash

# General
sudo apt update
sudo apt upgrade -y
sudo apt-get install -y dirmngr gnupg wget apt-transport-https software-properties-common zip unzip
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update

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
sudo apt install -y mono-devel

# Rust
sudo apt install -y rustc

# Bash
sudo apt install -y bash

# Powershell
sudo apt install -y powershell

# PHP
sudo apt install -y php

# Kotlin
curl -s https://get.sdkman.io | bash
source ~/.sdkman/bin/sdkman-init.sh
sdk install kotlin
sudo apt update

# Go
sudo apt install -y golang-go

# Ada
sudo apt install -y gnat-10

# Swift
sudo apt install -y binutils git gnupg2 libc6-dev libcurl4 libedit2 libgcc-9-dev libpython2.7 libsqlite3-0 libstdc++-9-dev libxml2 libz3-dev pkg-config tzdata zlib1g-dev
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
sudo apt install -y lua5.3

# R
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
sudo apt install -y r-base

# Perl
sudo apt install -y perl

# Scala
wget https://downloads.lightbend.com/scala/2.13.4/scala-2.13.4.deb
sudo dpkg -i scala-2.13.4.deb
rm scala-2.13.4.deb

# Visual Basic
sudo apt install -y mono-vbnc

# Assembly
sudo apt install -y nasm

# SQL
sudo apt install -y sqlite3

# HTML
sudo apt install -y lynx

# TypeScript
sudo apt install -y npm
sudo npm install -g typescript

# Lisp
sudo apt install -y clisp

# Vimscript
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install -y neovim

# Haskell
sudo apt install -y haskell-platform

# Julia
sudo apt install -y julia

# Vala
sudo add-apt-repository ppa:vala-team
sudo apt update
sudo apt install -y valac

# Pascal
sudo apt install -y fpc

# Fortran
sudo apt install -y gfortran

# Cobol
sudo apt install -y open-cobol

# General
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
source ~/.sdkman/bin/sdkman-init.sh
source ~/.profile
source ~/.bashrc
rm packages-microsoft-prod.deb
