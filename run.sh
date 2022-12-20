dirname="node_modules"
if [ -d "$dirname" ]
then
   datapm2=$(pm2 id Vivek)
   for index in $datapm2;
   do
   echo $index;
   pm2 restart $index;
   done
else
   npm install
   pm2 start index.js --name "Vivek"
fi
