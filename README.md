# Powershell2
Using Powershell to Automate Offboarding of Active Directory Users

After creating a default folder containing the script for Powershell to open with, I created an alias for the script to disable users called ‘offboard’ which will point to our script ‘disableusers.ps1’ which contains our automated script to disable users from our Active directory. 

![PS1](https://github.com/pattytechuk/Powershell2/assets/167561785/5ab2ecf8-a43c-4ef6-a723-43bcc666354c)

The following script prompts the Powershell user to enter a username from the directory.

The following lines define the variable ‘udisable’, verifies if the user exists and if not, handles the error by assigning a null value if they do not exist.

The If / Else statement uses the $user variable to define what to do if the user does not exist and instructs the program to disable the AD account. If the user does not exist, it will respond with message “User does not exist.” 

![PS2](https://github.com/pattytechuk/Powershell2/assets/167561785/53f84f0d-60b1-42d5-8fd6-af2bbbd7ed9c)

To test if this script works, I opened up Powershell (as administrator) and typed in ‘get-alias’ first to see if my new alias ‘offboard’ appears. 

![PS3](https://github.com/pattytechuk/Powershell2/assets/167561785/06c4f60e-3daf-488a-8bac-3ea8b9ad53c0)
![PS4](https://github.com/pattytechuk/Powershell2/assets/167561785/54c1ebe1-321f-4ecd-b39d-5d9b18e3d5f9)

I picked out a random user that is part of the OU “HR” from Active Directory - username jgonzalez.

Typing in the following command to get this particular user and see if their account was enabled (True indicating it is enabled).

From there I typed in offboard to initiate our script file ‘disableusers.ps1’. The final line indicates the account is now disabled. 
![PS6](https://github.com/pattytechuk/Powershell2/assets/167561785/a9f64f39-0677-49cb-9803-53d6089986de)

To test the script to see if it could detect an invalid username, I ran the script again with a username that does not exist in the directory and it does so successfully.
