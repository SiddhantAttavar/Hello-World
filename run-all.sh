#!/bin/bash

# Run programs
python3 HelloWorld.py
g++ HelloWorld.cpp -o a && ./a
java HelloWorld.java
gcc HelloWorld.c -o a && ./a
node HelloWorld.js
mcs -out:a HelloWorld.cs && ./a
rustc HelloWorld.rs -o a && ./a
bash HelloWorld.sh
pwsh HelloWorld.ps1
php HelloWorld.php
kotlinc HelloWorld.kt -include-runtime -d a.jar && java -jar a.jar
go run HelloWorld.go
swift HelloWorld.swift
dart HelloWorld.dart
gcc HelloWorld.m -I /GNUstep/System/Library/Headers -L /GNUstep/System/Library/Libraries -lobjc -lgnustep-base -fconstant-string-class=NSConstantString -isystem /usr/include/GNUstep -o a && ./a
ruby HelloWorld.rb
lua HelloWorld.lua
Rscript HelloWorld.r
perl HelloWorld.pl
scala HelloWorld.scala
vbnc HelloWorld.vb -out:a.exe >> /dev/null && mono a.exe
nasm -f elf64 HelloWorld.asm -o a.o && ld a.o -o a && ./a
sqlite3 < HelloWorld.sql
lynx -dump HelloWorld.html
tsc HelloWorld.ts --outFile a.js && node a.js
clisp HelloWorld.lisp
nvim --headless +so HelloWorld.vim
ghc HelloWorld.hs -o a >> /dev/null && ./a
julia HelloWorld.jl
vala HelloWorld.vala
fpc HelloWrld.pas -oa >> /dev/null 2>&1 && ./a

# Remove temporary files
rm a*
rm HelloWorld.hi HelloWorld.o
