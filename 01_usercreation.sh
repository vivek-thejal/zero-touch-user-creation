#!/bin/bash 

decor(){
echo ================================================================
}

sudousercreation() {
useradd -s /bin/bash -d /home/$uservar -m -G sudo $uservar
echo -e "Tempcode@12345\nTempcode@12345\n" | sudo passwd $uservar
sudo passwd --expire $uservar
chown -Rv $uservar:$uservar /home/$uservar/
echo $uservar have to change the password at next login !!
}

normalusercreation() {
useradd -s /bin/bash -d /home/$uservar -m $uservar
echo -e "Tempcode@12345\nTempcode@12345\n" | sudo passwd $uservar
sudo passwd --expire $uservar
chown -Rv $uservar:$uservar /home/$uservar/
echo $uservar have to change the password at next login !!
}

yes_or_no_poper() {
while true; do
    read -p "Do you wish to Create $uservar ? " yn
    case $yn in
        [Yy]* ) user_type; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
}

user_type() {
while true; do
    decor
    echo Please confirm by typing sudo or normal 
    decor
    read -p "Type of user $uservar ? " yn
    case $yn in
        [Ss]* ) sudousercreation; break;;
        [Nn]* ) normalusercreation; break;;
        * ) echo "Please answer sudo or normal";;
    esac
done
}

read -p 'Type the New Username: ' uservar
echo New UserName $uservar
decor
echo Please confirm by typing yes or no 
decor

yes_or_no_poper #confirmation block


echo This is the New User $uservar Created !!!!!

decor
echo checkup of New $uservar

decor
grep $uservar  /etc/passwd
decor
# -s /bin/bash – Set /bin/bash as login shell of the new account
# -d /home/tricog_user/ – Set /home/tricog_user/ as home directory of the new Ubuntu account
# -m – Create the user’s home directory
# -G sudo – Make sure tricog_user user can sudo i.e. give admin access to the new account
# --expire will force user to change password