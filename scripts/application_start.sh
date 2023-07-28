#!/bin/bash

#give permission for everything in the express-app directory
sudo chmod -R 777 /home/ec2-user/nestjs-hello-world

#navigate into our working directory where we have all our github files
echo "navigate into our working directory where we have all our github files"
cd /home/ec2-user/nestjs-hello-world

#add npm and node to path
echo "add npm and node to the path"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)

#install node modules
echo "Install app dependencies"
rm -rf node_modules package-lock.json
npm install

#build our app
echo "Build application"
npm run build

#start our node app in the background
echo "Run application in PM2 action"
cp /home/ec2-user/nestjs-hello-world/scripts/hello-world.json hello-world.json
pm2 start hello-world.json
