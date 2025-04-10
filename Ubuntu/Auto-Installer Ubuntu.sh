#!/bin/bash

clear
 sleep 1
  echo ""
  echo "            .-/+oossssoo+/-.
         :+ssssssssssssssssss+:
      -+ssssssssssssssssssyyssss+-
    .ossssssssssssssssssdMMMNysssso.
   /ssssssssssshdmmNNmmyNMMMMhssssss/
  +ssssssssshmydMMMMMMMNddddyssssssss+
 /sssssssshNMMMyhhyyyyhmNMMMNhssssssss/
.ssssssssdMMMNhsssssssssshNMMMdssssssss.
+sssshhhyNMMNyssssssssssssyNMMMysssssss+
ossyNMMMNyMMhsssssssssssssshmmmhssssssso
ossyNMMMNyMMhsssssssssssssshmmmhssssssso
+sssshhhyNMMNyssssssssssssyNMMMysssssss+
.ssssssssdMMMNhsssssssssshNMMMdssssssss.
 /sssssssshNMMMyhhyyyyhdNMMMNhssssssss/
  +sssssssssdmydMMMMMMMMddddyssssssss+
   /ssssssssssshdmNNNNmyNMMMMhssssss/
    .ossssssssssssssssssdMMMNysssso.
      -+sssssssssssssssssyyyssss+-
         :+ssssssssssssssssss+:
            .-/+oossssoo+/-."

 sleep 2
  echo ""
  echo "• Welcome to Ubuntu Auto-Installer $USER!"
 sleep 1

 #Selection
 sleep 1
  echo "• Choose your language:"
  echo "• P = Portuguese"
  echo "• E = English"
  read -p ":" choice

 #Set messages based on chosen language
case "$choice" in
  P|p)
    Lang="pt"
    echo "Idioma configurado para Português."
    Start="Iniciando o Installer..."
    Updating="Atualizando o Ubuntu..."
    Installing="Instalando pacotes..."
    Config="Configurando..."
    Download="Hora de baixar!"
    Downloading="Baixando..."
    Finished="Installer terminado!"
    Thanks="Obrigado por usar o nosso Ubuntu Installer $USER!"
    ;;
  E|e)
    Lang="en"
    echo "Language set to English."
    Start="Starting the Installer..."
    Updating="Updating the Ubuntu..."
    Installing="Installing packages..."
    Config="Setting up..."
    Download="Time to download!"
    Downloading="Downloading..."
    Finished="Installer Finished!"
    Thanks="Thank you for using our Ubuntu Installer $USER!"
    ;;
  *)
    echo "Invalid option, using English default."
    Lang="en"
    Start="Starting the Installer..."
    Updating="Updating the Ubuntu..."
    Installing="Installing packages..."
    Config="Setting up..."
    Download="Time to download!"
    Downloading="Downloading..."
    Finished="Installer Finished!"
    Thanks="Thank you for using our Ubuntu Installer $USER!"
    ;;
esac

 #Commands
 sleep 1
clear
 sleep 1
  echo "$Start"
 sleep 1
  echo "$Updating"
 sleep 1
  echo ""
   sudo apt-get update
   sudo apt upgrade -y
 sleep 1
clear
  echo "$Installing"
 sleep 1
  echo ""
   sudo apt purge snapd -y
   sudo apt install flatpak fastfetch zsh curl which wget git -y
   sudo apt install gnome-software-plugin-flatpak -y
 sleep 1
  echo ""
  echo "$Config"
 sleep 1
  echo ""
   flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
 sleep 1
clear
  echo "$Installing"
 sleep 1
  echo ""
   flatpak install flathub org.kde.kate org.videolan.VLC com.mattjakeman.ExtensionManager com.github.tchx84.Flatseal io.gitlab.librewolf-community -y

 #Ending
 sleep 1
clear
  echo "$Finished"
 sleep 1
  echo "$Thanks"
 sleep 2
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
