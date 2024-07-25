echo "Starting Deployment !"
cd ./apim_cli/apim-cli-1.14.4/scripts
chmod 777 apim.sh
./apim.sh api get -s api-env
