#!/bin/bash

     #Arte mais bonita do planeta
  clear
   sleep 1
    echo ""
    echo "              @@@@@@@
                @@@@@@@
                  @@@@@@@
                    @@@@@@@
                      @@@@@@@
                        @@@@@@@
                      @@@@@@@
                    @@@@@@@
                  @@@@@@@
                @@@@@@@           (((((((((((((((
              @@@@@@@             @@@@@@@@@@@@@@@"
   sleep 2
    echo ""
    echo "• Welcome to Termux Auto-Install!."
   sleep 3

     #Escolha o idioma

     echo ""
     echo "• Choose your language:"
     echo "P - Portuguese"
     echo "E - English"
 read -p ": " escolha

     #Definir mensagens com base no idioma escolhido
 if [[ "$escolha" == "P" ]]; then
     LANG="pt"
     MSG_UPDATE="Atualizando pacotes..."
     MSG_CONFIG="Configurando..."
     MSG_INSTALL="Instalando pacotes..."
     MSG_DOWNLOAD="Baixando pacotes..."
     MSG_DONE="Instalação concluída!."
     MSG_THANKS="Obrigado por baixar o nosso Auto-Install!."
 elif [[ "$escolha" == "E" ]]; then
     LANG="en"
     MSG_UPDATE="Updating packages..."
     MSG_CONFIG="Configuring..."
     MSG_INSTALL="Installing packages..."
     MSG_DOWNLOAD="Downloading packages..."
     MSG_DONE="Installation completed!."
     MSG_THANKS="Thank you for downloading our Auto-Install!."
 elif [[ "$escolha" == "p" ]]; then
     LANG="pt"
     MSG_UPDATE="Atualizando pacotes..."
     MSG_CONFIG="Configurando..."
     MSG_INSTALL="Instalando pacotes..."
     MSG_DOWNLOAD="Baixando pacotes..."
     MSG_DONE="Instalação concluída!."
     MSG_THANKS="Obrigado por baixar o nosso Auto-Install!."
 elif [[ "$escolha" == "e" ]]; then
     LANG="en"
     MSG_UPDATE="Updating packages..."
     MSG_CONFIG="Configuring..."
     MSG_INSTALL="Installing packages..."
     MSG_DOWNLOAD="Downloading packages..."
     MSG_DONE="Installation completed!."
     MSG_THANKS="Thank you for downloading our Auto-Install!."
 else
      echo "Opção inválida, usando Português por padrão."
     LANG="pt"
     MSG_UPDATE="Atualizando pacotes..."
     MSG_CONFIG="Configurando..."
     MSG_INSTALL="Instalando Pacotes..."
     MSG_DOWNLOAD="Baixando pacotes..."
     MSG_DONE="Instalação concluída!."
     MSG_THANKS="Obrigado por baixar o nosso Auto-Install!."
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
  pkg install fish wget which curl proot-distro -y
   sleep 1
      echo ""
      echo "$MSG_DOWNLOAD"
   sleep 1
      echo ""
   cd ~
    git clone https://github.com/oh-my-fish/oh-my-fish
     curl -fsSL -o ~/.termux/font.ttf https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf
      mkdir ~/.motd
      git clone https://github.com/Generator/termux-motd.git ~/.motd
     chmod +x ~/.motd
      echo "Usa 'bin/install --offline' pra instalar o omf, usa 'omf install [theme]' pra instalar os temas." >> ~/OMF\ Portuguese.txt
      echo "Use 'bin/install --offline' to install omf, use 'omf install [theme]' to install themes." >> ~/OMF\ English.txt
      echo "pkg update -y && ./.motd/init.sh && exec fish" >> ~/.bashrc
   sleep 2
      echo ""
      echo "$MSG_DONE"
   sleep 2
      echo "$MSG_THANKS"
   sleep 4
     fish
