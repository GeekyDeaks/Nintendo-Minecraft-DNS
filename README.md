# Nintendo Switch Minecraft DNS

Simple DNS proxy to allow accessing private servers on the Nintendo Switch

# get started

1. clone the repo

        git clone https://github.com/GeekyDeaks/Nintendo-Minecraft-DNS.git

2. build the image

        docker build -t mcb-dns .

3. run the server (replace the IP address with the server IP)

        docker run --rm -d -p 53:53/udp --add-host=mco.lbsg.net:192.168.152.139 mcb-dns

4. configure the switch to use the docker service as the DNS 

    `System Settings / Internet / Internet Settings / Change Settings / DNS Settings / Primary DNS`

5. Start Minecraft and connect to the server
    
    `Play / Servers / Lifeboat / Join Server`

# how it works

The Switch version of Minecraft does not allow connecting to arbitrary remote servers, but it does
have a small fixed list of `Approved` servers.  This workaround rewrites the DNS lookup for the 
Lifeboat server `(mco.lbsg.net)` by using a small dnsmasq docker instance

# credits

This is inspired by the following repo: https://github.com/ConnorGraham/Minecraft-Nintendo-Switch-Private-Server.git

Which in turn is based on an idea posted on reddit: https://www.reddit.com/r/MCPE/comments/a01tq8/bedrock_dedicated_server_for_the_switch/