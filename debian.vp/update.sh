#!/bin/bash
PESSOA=$(whoami)
echo -e "-----------------------------------------------------\n"
echo -e "\033[33;1m-----> comando update upgrade <------\033[m\n"
sleep 2s
apt update && apt upgrade -y
sleep 2s
echo -e "------------------------------------------------------\n"
echo -e "\033[33;1m-----> comando full-upgrade <-------\033[m\n"
sleep 2s
apt full-upgrade -y
echo -e "------------------------------------------------------\n"
echo -e "\033[33;1m-----> comando apt install <-------\033[m\n"
sleep 2s
apt install
echo -e "------------------------------------------------------\n"
echo -e "\033[33;1m-----> comando autoremove <--------\033[m\n" 
sleep 2s
apt clean && apt autoclean &&  apt autoremove -y
echo -e "-------------------------------------------------------\n"
sleep 1s
echo -e "\033[33;1m-----> comando deu certo $PESSOA <-----\033[m\n" 
