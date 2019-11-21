#Create a new User with a password of your choosing in the default Group
    sudo dscl . -create /Users/newUser
    sudo dscl . -create /Users/newUser UserShell /bin/bash
    sudo dscl . -create /Users/newUser RealName “New User”
    sudo dscl . -create /Users/newUser UniqueID 1002
    sudo dscl . -create /Users/newUser PrimaryGroupID 20
    sudo dscl . -create /Users/newUser NFSHomeDirectory /Users/newUser
    sudo dscl . -passwd /Users/newUser newUser

#Validate the new User by logging off and logging into the new Users account
    echo "Login to newUser & then logout"
    login 
    #script ends due to new login 

#RESOURCES: 
# https://sterlingit.com.au/how-to-create-a-user-or-admin-user-in-osx-apple-mac-via-terminal-commands-in-9-simple-steps/
# https://superuser.com/questions/214004/how-to-add-user-to-a-group-from-mac-os-x-command-line
# https://superuser.com/questions/40061/what-is-the-mac-os-x-terminal-command-to-log-out-the-current-user
# https://apple.stackexchange.com/questions/324614/listing-all-the-groups-to-which-a-user-belongs-in-macos