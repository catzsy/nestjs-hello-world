echo "setting nvm paths"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
echo "killing pm2 processes now"
su - ec2-user -c "pm2 stop hello-world"