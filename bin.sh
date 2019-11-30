  #! /bin/sh
    echo Going to gitHub...
    cd /home/epeis/sour/gitMd
    echo check git status...
    git status

    echo "commit?(yes/no)"
    read choice  

    if [ ${choice} = yes ] 
      then echo Please Enter the commit message:
    else echo Not commited.
       exit
    fi
                                  
     read message
     #echo message is $message
                                          
     git add --all
     git commit -m"$message"
     echo committed
     echo "push to git?(yes/no)"
     read push_choice
                                                           
     if [ ${push_choice} = yes ]
        then echo trying to push to origin master...
        git push origin master
     else echo Not pushed.
     fi

