
When you run this bash script , first it will get the username as input and need to confirm by typing yes or no.If you type yes , it will process to step 2 , else its script will exit.

Once you confirm by typing yes , another prompt will ask for user type : Sudo or Normal
As per your input script it will execute its command and create a user.
Current Password : defined in script : Tempcode@12345
Note : users need to change the password at their next login.


Step 1 : 


Run the bash script as Root user 
Type the correct username in “Type the New Username:” Prompt
Confirm the username by typing YES or yes and process to Step 2

root@mycom-vivek:/home/mycom/Desktop# bash 01_user_creation.sh 
Type the New Username: gandhi

New UserName gandhi

Please confirm by typing yes or no

Do you wish to Create gandhi ? yes


Step 2 :


Confirm the newly created type :
Sudo 
Normal
Type SUDO or sudo
Type NORMAL or normal



Please confirm by typing sudo or normal


Type of user gandhi ? sudo



Step 3 :
Verify the output


New password: BAD PASSWORD: The password fails the dictionary check - it is too simplistic/systematic
Retype new password: passwd: password updated successfully
ownership of '/home/gandhi/.profile' retained as gandhi:gandhi
ownership of '/home/gandhi/.bashrc' retained as gandhi:gandhi
ownership of '/home/gandhi/.bash_logout' retained as gandhi:gandhi
ownership of '/home/gandhi/' retained as gandhi:gandhi
gandhi have to change the password at next login !!
This is the New User gandhi Created !!!!!


checkup of New gandhi
passwd: password expiry information changed.

gandhi:x:1002:1002::/home/gandhi:/bin/bash

