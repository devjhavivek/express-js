if exist "node_modules\" (
    pm2 restart Test
) else (
    npm install
    pm2 start index.js --name "Test"
)
