#!/usr/bin/env bash

read -p "Please enter your user: " user
read -p "Please enter your email: " email

sed -i "s/placeholdername/$user/" gitconfig
sed -i "s/placeholderemail/$email/" gitconfig

echo "Copying global gitignore to ~/ ..."
cp gitignore_global ~/.gitignore_global

echo "Copying global git config to ~/ ..."
cp gitconfig ~/.gitconfig

echo "Git was successfully set up"
