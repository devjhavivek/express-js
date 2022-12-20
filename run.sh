
dirname="node_modules"
if [ -d "$dirname" ]
then
   pm2 restart 0
else
   npm install
   pm2 start index.js
fi
