echo "setting nvm paths"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
echo "killing pm2 processes now"
pm2 stop hello-world