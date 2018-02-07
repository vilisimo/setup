#!/usr/bin/env bash

read -p "Please enter your username: " username
read -p "Please enter your email: " email

sed -i "s/placeholdername/$username/" gitconfig
sed -i "s/placeholderemail/$email/" gitconfig

mv gitconfig ~/.gitconfig
