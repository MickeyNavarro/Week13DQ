#Validate the new User’s home directory
    cd /Users/newUser

#Validate the new User’s groups (use the groups command)
    echo "User's groups: "
    id -Gn newUser

#Log off and log back into your account
    echo "Login to newUser & then logout"
    login
    #script ends due to new login 