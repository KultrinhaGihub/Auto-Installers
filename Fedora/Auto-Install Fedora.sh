

      #Beautiful art
  clear
 sleep 1
    echo "               %%%%%%%%%%%%%%%
         %%%%%%%%%%%%%%%%%%%%%%%%%%%
       %%%%%%%%%%%%%%%%%#    ,%%%%%%%%
     %%%%%%%%%%%%%%%(          (((%%%%%%
   %%%%%%%%%%%%%%%%     (%%%%%(((((#%%%%%
  %%%%%%%%%%%%%%%%    .%%%%%%%%%((((#%%%%
 %%%%%%%%%%%%%%%%%    %%%%%%%%%%(((((%%%%
 %%%%%%%%%%%%%%%%%    %%%%%%%%%(((((%%%%%
 %%%%%%%%(((                ((((((#%%%%%%
 %%%%%((((((                (((%%%%%%%%%%
 %%%#((((%%%%%%%%%    %%%%%%%%%%%%%%%%%%%
 %%%((((%%%%%%%%%%    %%%%%%%%%%%%%%%%%%
 %%%((((%%%%%%%%%%    %%%%%%%%%%%%%%%%%
 %%%#(((((%%%%%%     %%%%%%%%%%%%%%%%%
 %%%%%#((           %%%%%%%%%%%%%%%
 %%%%%%%%%%    #%%%%%%%%%%%%%%%%%
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%%%%%%%%%%%%%%%%%%%%%"

      #Begin
  sleep 2
     echo ""
     echo "Welcome to Fedora Linux Auto-Install!"
  sleep 2

      #Language
     echo ""
     echo "Escolha seu idioma / Choose your language:"
     echo "P - Português"
     echo "E - English"
 read -p ": " escolha

     #Set messages based on chosen language 
 if [[ "$escolha" == "P" ]]; then
     LANG="pt"
     MSG_UPDATE_FEDORA="Atualizando o Fedora..."
     MSG_AND="e"
     MSG_UPDATE="Atualizando pacotes..."
     MSG_CONFIG="Configurando..."
     MSG_INSTALL="Instalando pacotes..."
     MSG_DOWNLOAD="Baixando pacotes..."
     MSG_DONE="Instalação concluída!."
     MSG_THANKS="Obrigado por baixar o nosso Auto-Install!."
 elif [[ "$escolha" == "E" ]]; then
     LANG="en"
     MSG_UPDATE_FEDORA="Updating Fedora..."
     MSG_AND="and"
     MSG_UPDATE="Updating packages..."
     MSG_CONFIG="Configuring..."
     MSG_INSTALL="Installing packages..."
     MSG_DOWNLOAD="Downloading packages..."
     MSG_DONE="Installation completed!."
     MSG_THANKS="Thank you for downloading our Auto-Install!."
 elif [[ "$escolha" == "p" ]]; then
     LANG="pt"
     MSG_UPDATE_FEDORA="Atualizando o Fedora..."
     MSG_AND="e"
     MSG_UPDATE="Atualizando pacotes..."
     MSG_CONFIG="Configurando..."
     MSG_INSTALL="Instalando pacotes..."
     MSG_DOWNLOAD="Baixando pacotes..."
     MSG_DONE="Instalação concluída!."
     MSG_THANKS="Obrigado por baixar o nosso Auto-Install!."
 elif [[ "$escolha" == "e" ]]; then
     LANG="en"
     MSG_UPDATE_FEDORA="Updating Fedora..."
     MSG_AND="and"
     MSG_UPDATE="Updating packages..."
     MSG_CONFIG="Configuring..."
     MSG_INSTALL="Installing packages..."
     MSG_DOWNLOAD="Downloading packages..."
     MSG_DONE="Installation completed!."
     MSG_THANKS="Thank you for downloading our Auto-Install!."
 else
      echo "Opção inválida, usando Português por padrão."
     LANG="pt"
     MSG_UPDATE_FEDORA="Atualizando o Fedora..."
     MSG_AND="e"
     MSG_UPDATE="Atualizando pacotes..."
     MSG_CONFIG="Configurando..."
     MSG_INSTALL="Instalando Pacotes..."
     MSG_DOWNLOAD="Baixando pacotes..."
     MSG_DONE="Instalação concluída!."
     MSG_THANKS="Obrigado por baixar o nosso Auto-Install!."
 fi

     #Installing packages
  clear
   sleep 1
    echo ""
    echo "$MSG_UPDATE_FEDORA $MSG_AND $MSG_UPDATE"
 dnf update
  dnf upgrade -y

  clear
   sleep 1
    echo ""
    echo "$MSG_INSTALL"
   sleep 1
    echo ""
    dnf in curl fish neofetch which flatpak wget -y --skip-unavailable

    echo "$MSG_DOWNLOAD"
     git clone https://github.com/oh-my-fish/oh-my-fish
    echo "Usa 'bin/install --offline' pra instalar o omf, usa 'omf install [theme]' pra instalar os temas." >> ~/OMF\ Portuguese.txt
    echo "Use 'bin/install --offline' to install omf, use 'omf install [theme]' to install themes." >> ~/OMF\ English.txt
    echo "dnf update -y && dnf upgrade -y && clear && fastfetch && exec fish" >> .bashrc
      chmod +x oh-my-fish
  sleep 1
      clear

     #closing
       clear
  sleep 1
   echo "$MSG_DONE"
  sleep 2
   echo "$MSG_THANKS"
  sleep 4
        fish
