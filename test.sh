echo "Starting Deployment !"
cd ./apim_cli/apim-cli-1.14.4/scripts
chmod 777 apim.sh
./apim.sh apim api import -s ${Env} -c /apim_cli/apim-cli-1.14.4/scripts/v2/api-config.json -a /apim_cli/apim-cli-1.14.4/scripts/v2/Play\ with\ Numbers_v2.yaml.yaml -ignoreCache
