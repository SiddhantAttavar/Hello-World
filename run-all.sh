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
vbc -quiet HelloWorld.vb -o a.exe && mono a.exe
nasm -f elf64 HelloWorld.asm -o a.o && ld a.o -o a && ./a
sqlite3 < HelloWorld.sql

# Remove temporary files
rm a*