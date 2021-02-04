# OpenrestyForHpbRPC
Bridge Protocol For ETH dapp to HPB dapp
The HPB mainnet supports most of the API interfaces on ETH. In order to facilitate the seamless migration of ETH developers to the HPB mainnet, this plugin can be used to complete the configuration.

1. Specify a machine to install HPB synchronization node
2. Install and deploy the Nginx server on this machine.
3. Inject this OpenrestyForHpbRPC plugin
4. Switch the interface address of the Dapp connection on your ETH, and the address points to the server address configured by nginx. In this way, your Dapp is invalid and any sdk and api modification on ETH can be directly connected to the HPB mainnet.
