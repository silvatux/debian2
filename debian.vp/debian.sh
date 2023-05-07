#!/usr/bin/env bash

#========================================================================================================================================================================================================

PESSOA=$(whoami)


#  Configurando a sources.list do Debian

#Um procedimento fundamental que devemos executar logo após instalar o Debian 11 "Bullseye" é #configurar a sources.list (um arquivo localizado na pasta /etc/apt que contém os repositórios de #softwares

echo -e " -------------- Configurando a sources.list do Debian ---------------------\n"
sleep 2s
#sudo echo "#Bullseye (main)

#deb http://deb.debian.org/debian bullseye main
#deb http://deb.debian.org/debian bullseye-updates main
#deb https://security.debian.org/ bullseye-security main
#" > /etc/apt/sources.list

echo "#Bullseye (non-free)

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

#deb http://deb.debian.org/debian bookworm main contrib non-free
#deb http://deb.debian.org/debian bookworm-updates main contrib non-free
#deb https://security.debian.org/ bookworm-security main contrib non-free
#" > /etc/apt/sources.list

echo -e "ok \n"

echo -e "  ---------> Atualizando o sistema <------------ \n"
sleep 2s
apt update && apt upgrade -y
sleep 1s
echo -e "ok\n"
echo -e "------------> full-upgrade <------------------\n"
sleep 2s
apt full-upgrade -y
sleep 1s
echo -e "ok\n"
echo -e "---------------> apt install <----------------\n"
sleep 2s
apt install
sleep 1s
echo -e "ok\n"
echo -e "---------> comando autoremove <---------\n"
sleep 2s
apt clean && apt autoclean && apt autoremove -y
sleep 1s
echo -e "ok\n"
echo -e "-------------> Ferramentas e utilitários 1 <-------------\n"
sleep 2s
apt install neofetch gufw  vim celluloid  gimp p7zip gdebi uget qbittorrent gparted synaptic flatpak gnome-software-plugin-flatpak gnome-software -y

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sleep 1s

echo -e "ok\n"
echo -e "-------------> Ferramentas e utilitários 2 <-------------\n"
sleep 2s
apt install faad ffmpeg   gstreamer1.0-vaapi gstreamer1.0-plugins-bad gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly lame libavcodec-extra  libavdevice58 libgstreamer1.0-0 sox twolame vorbis-tools -y
sleep 1s
echo -e "ok\n"
echo -e "-------------> Ferramentas e utilitários 3 <-------------\n"
sleep 2s
apt install audacious -y
sleep 1s
echo -e "ok\n"
echo -e "-------------> Ferramentas e utilitários 4 <-------------\n"
sleep 2s
apt install arc arj cabextract lhasa p7zip p7zip-full    unace unzip xz-utils zip -y
apt install htop  gedit thunderbird thunderbird-l10n-pt-br -y
apt install mugshot evince mate-calc -y
sleep 1s
echo -e "ok\n"
echo -e "------------->   Atualizando o firmware do seu processador <-------------\n"
sleep 2s
#apt install intel-microcode
apt install amd64-microcode -y
sleep 1s
echo -e "ok\n"
echo -e "-------------> Alterando o valor da swappiness <-------------\n"
sleep 2s
echo vm.swappiness=5   >> /etc/sysctl.conf
sleep 1s
echo -e "ok\n"
echo -e "  ---------> Atualizando o sistema <------------ \n"
sleep 2s
apt update && apt upgrade -y
apt install
sleep 1s
echo -e "ok\n"
echo -e "---------> comando autoremove <---------\n"
sleep 2s
apt clean && apt autoclean && apt autoremove -y
sleep 2s
echo -e "ok\n"
sleep 1s
echo -e "---------> windows sumiu <---------\n"
sleep 1s
#sudo echo GRUB_DISABLE_OS_PROBER=false >> /etc/default/grub && sudo update-grub
echo -e "ok\n"
echo -e "---------> Debian <---------
O Debian é uma das mais antigas e confiáveis distribuições Linux, reconhecido principalmente pela sua estabilidade, segurança, ser construído com softwares 100% livres e de código aberto, suporte a uma longa lista de arquiteturas de CPU e também pela sua vasta quantidade de pacotes disponíveis nos repositórios oficiais, que atualmente passa dos 59 mil. E se tratando de segurança e estabilidade, todo cuidado é pouco, abaixo você confere algumas dicas que você deve seguir para não quebrar o seu Debian.\n"

sleep 3s
echo "Bem-vindo a Debian $PESSOA "



