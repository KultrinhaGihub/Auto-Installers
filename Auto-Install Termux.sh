#!/bin/bash

     #Arte mais bonita do planeta
  clear
   sleep 1
    echo ""
    echo ""
    echo " @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@   *@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@   %@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@    @@@@@@@@          @@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
   sleep 2
    echo ""
    echo "Bem-Vindo ao Auto-Install!."
    echo "Welcome to Auto-Install!."
    echo "¡Bienvenido a la instalación automática!."
   sleep 3

     #Escolha o idioma

     echo "Escolha seu idioma / Choose your language / Elija su idioma:"
     echo "1 - Português"
     echo "2 - English"
     echo "3 - Español"
 read -p "Digite o número correspondente: " escolha

     #Definir mensagens com base no idioma escolhido
 if [[ "$escolha" == "1" ]]; then
     LANG="pt"
     MSG_UPDATE="Atualizando pacotes..."
     MSG_CONFIG="Configurando..."
     MSG_INSTALL="Instalando Pacotes..."
     MSG_DONE="Instalação concluída!."
     MSG_THANKS="Obrigado por baixar o nosso Auto-Install!."
 elif [[ "$escolha" == "2" ]]; then
     LANG="en"
     MSG_UPDATE="Updating packages..."
     MSG_CONFIG="Configuring..."
     MSG_INSTALL="Installing Packages..."
     MSG_DONE="Installation completed!."
     MSG_THANKS="Thank you for downloading our Auto-Install!."
 elif [[ "$escolha" == "3" ]]; then
     LANG="es"
     MSG_UPDATE="Actualizando paquetes..."
     MSG_CONFIG="Configurando..."
     MSG_INSTALL="Instalando paquetes..."
     MSG_DONE="¡Instalación completada!."
     MSG_THANKS="¡Gracias por descargar nuestra instalación automática!."
 else
      echo "Opção inválida, usando Português por padrão."
     LANG="pt"
     MSG_UPDATE="Atualizando pacotes..."
     MSG_CONFIG="Configurando..."
     MSG_INSTALL="Instalando Pacotes..."
     MSG_DONE="Instalação concluída!."
 fi

     #Instalando e configurando
   sleep 2
clear
      echo ""
      echo "$MSG_UPDATE"
   sleep 1
      echo ""
 pkg update && pkg upgrade -y
   sleep 1
      echo ""
      echo "$MSG_CONFIG"
   sleep 1
      echo ""
  termux-change-repo && termux-setup-storage
   sleep 1
      echo ""
      echo "$MSG_INSTALL"
   sleep 1
      echo ""
  pkg install fish wget which curl git -y
   sleep 1
      echo ""
      echo "$MSG_DONE"
   sleep 2
      echo "$MSG_THANKS"
   sleep 4
