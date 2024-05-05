# Powershell2
Using Powershell to Automate Offboarding of Active Directory Users

After creating a default folder containing the script for Powershell to open with, I created an alias for the script to disable users called ‘offboard’ which will point to our script ‘disableusers.ps1’ which contains our automated script to disable users from our Active directory. 

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/b771cda1-e564-4d76-85e7-2052966a45c1/1c57614b-b4dd-4735-a95c-a25f0ceca676/Untitled.png)

The following script prompts the Powershell user to enter a username from the directory.

The following lines define the variable ‘udisable’, verifies if the user exists and if not, handles the error by assigning a null value if they do not exist.

The If / Else statement uses the $user variable to define what to do if the user does not exist and instructs the program to disable the AD account. If the user does not exist, it will respond with message “User does not exist.” 

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/b771cda1-e564-4d76-85e7-2052966a45c1/9d75e5b4-9772-4d78-8453-aa7dda619ed4/Untitled.png)

To test if this script works, I opened up Powershell (as administrator) and typed in ‘get-alias’ first to see if my new alias ‘offboard’ appears. 

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/b771cda1-e564-4d76-85e7-2052966a45c1/5d4772c7-6c65-49d9-bf4a-78681a8fc3b5/Untitled.png)

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/b771cda1-e564-4d76-85e7-2052966a45c1/3a5f20a0-28cd-4af6-990a-26787f02fe60/Untitled.png)

I picked out a random user that is part of the OU “HR” from Active Directory - username jgonzalez.

Typing in the following command to get this particular user and see if their account was enabled (True indicating it is enabled).

From there I typed in offboard to initiate our script file ‘disableusers.ps1’. The final line indicates the account is now disabled. 

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/b771cda1-e564-4d76-85e7-2052966a45c1/aa5443a3-cfe4-41c9-a490-cb57727079e0/Untitled.png)

To test the script to see if it could detect an invalid username, I ran the script again with a username that does not exist in the directory and it does so successfully.
