#!/usr/bin/env bash

read -p "Please enter your user: " user
read -p "Please enter your email: " email

sed -i "s/placeholdername/$user/" gitconfig
sed -i "s/placeholderemail/$email/" gitconfig

mv gitconfig ~/.gitconfig
