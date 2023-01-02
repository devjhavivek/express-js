#set /p folder_name="node_modules"
if exist "node_modules\" (
    pm2 restart Tets
) else (
    npm install
    pm2 start index.js --name "Test"
)
