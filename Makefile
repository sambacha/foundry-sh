# Deployment helper
deploy :; ./scripts/deploy.sh

# mainnet
deploy-mainnet: export ETH_RPC_URL = $(call network,mainnet)
deploy-mainnet: export NETWORK=mainnet
deploy-mainnet: check-api-key deploy

# kovan
deploy-kovan: export ETH_RPC_URL = $(call network,kovan)
deploy-kovan: export NETWORK=kovan
deploy-kovan: check-api-key deploy

# rinkeby
deploy-rinkeby: export ETH_RPC_URL = $(call network,rinkeby)
deploy-rinkeby: export NETWORK=rinkeby
deploy-rinkeby: check-api-key deploy