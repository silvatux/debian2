#!/usr/bin/env bash

#========================================================================================================================================================================================================

PESSOA=$(whoami)


#  Configurando a sources.list do Debian

#Um procedimento fundamental que devemos executar logo após instalar o Debian 11 "Bullseye" é #configurar a sources.list (um arquivo localizado na pasta /etc/apt que contém os #repositórios de #softwares

echo -e " -------------- Configurando a sources.list do Debian ---------------------\n"
sleep 2s
#sudo echo "#Bullseye (main)

#deb http://deb.debian.org/debian bullseye main
#deb http://deb.debian.org/debian bullseye-updates main
#deb https://security.debian.org/ bullseye-security main
#" > /etc/apt/sources.list

sudo echo "#Bullseye (non-free)

deb http://deb.debian.org/debian bullseye main contrib non-free
deb http://deb.debian.org/debian bullseye-updates main contrib non-free
deb https://security.debian.org/ bullseye-security main contrib non-free
" > /etc/apt/sources.list

#sudo echo "#Bookworm (main)

#deb http://deb.debian.org/debian bookworm main
#deb http://deb.debian.org/debian bookworm-updates main
#deb https://security.debian.org/ bookworm-security main
#" > /etc/apt/sources.list

#sudo echo "#Bookworm (non-free)

#deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware
#deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware
#deb https://security.debian.org/ bookworm-security main contrib non-free non-free-firmware
#" > /etc/apt/sources.list

echo -e "ok \n"

echo -e "  ---------> Atualizando o sistema <------------ \n"
sleep 2s
sudo apt update && sudo apt upgrade -y
sleep 1s
echo -e "ok\n"
echo -e "------------> full-upgrade <------------------\n"
sleep 2s
sudo apt full-upgrade -y
sleep 1s
echo -e "ok\n"
echo -e "---------------> apt install <----------------\n"
sleep 2s
sudo apt install
sleep 1s
echo -e "ok\n"
echo -e "---------> comando autoremove <---------\n"
sleep 2s
sudo apt clean && sudo apt autoclean && sudo apt autoremove -y
sleep 1s
echo -e "ok\n"




