#Add the new User to a Group ‘TestMe’ and validate (use the –force-badname option)
    #due to using the mac, --force-badname isn't needed here because usernames with capital letters are acceptable
    #created the group prior to this using "sudo dscl . create /Groups/TestMe"
    sudo dseditgroup -o edit -a newUser -t user TestMe
    echo "User's groups: "
    id -Gn newUser

#Delete the new User’s home directory and validate
    sudo rm -rf /Users/newUser
    echo "Validate that the home directory was deleted by trying to acces it"
    cd /Users/newUser

#Delete the new User and validate
    sudo dscl . delete /Users/newUser
    echo "Validate that newUser was deleted by trying to login; It shoud output 'Login incorrect'"
    login
    #end of DQ