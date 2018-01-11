# Run weechat in a Docker container

###  Build the container
        docker build ./

### Update weechat script with the container name and place it in your /home/$USER/bin dir
        mkdir /home/$USER/bin
        cp ./weechat /home/$USER/bin
        weechat
