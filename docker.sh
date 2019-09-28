cd ~/sd2/
sudo docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v $PWD/traefik.toml:/traefik.toml -p 80:80  -l traefik.frontend.rule=Host:monitor.suryad.com -l traefik.port=8080 --network proxy --name traefik traefik:1.7.12-alpine --docker
sudo docker run -d \
    --name watchtower \
    -v /var/run/docker.sock:/var/run/docker.sock \
    containrrr/watchtower

sudo docker up -d
tmux new -s runn

