#!/usr/bin/env bash

read -p "Please enter your username: " username
read -p "Please enter your email: " email

sed -i "2i\ \ \ \ name = $username" gitconfig
sed -i "3i\ \ \ \ email = $email" gitconfig

mv gitconfig ~/.gitconfig
