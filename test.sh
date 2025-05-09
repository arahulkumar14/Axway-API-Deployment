echo "Starting Connectivity Check !"
cd ./apim_cli/apim-cli-1.14.4/scripts
chmod 777 apim.sh
./apim.sh -v
echo "Connectivity Check Completed!"
echo "Starting Deployment"
./apim.sh org import -s ${Env} -c "$(pwd)"/Api_Project_File/org-config.json -ignoreCache
./apim.sh app import -s ${Env} -c "$(pwd)"/Api_Project_File/application-config.json -ignoreCache
./apim.sh apim api import -s ${Env} -c "$(pwd)"/Api_Project_File/api-config.json -a "$(pwd)"/Api_Project_File/Encryption_Decryption.json -ignoreCache
echo "Deployment Completed"
