# Smart contracts for integration with OpenSea
This repository contains smart contracts for demonstration of ways to integrate NFT smart contract with OpenSea.

They are mainly used in [article on Medium](https://medium.com/@shleshg/b2925789a62f).

### Prerequisites
First, you need to install truffle and dependencies:

```bash
npm install -g truffle
npm install
```

Then you need two accounts for demonstration:
1. Main deployer account. Store it's private key in file `.deployer-key`
2. Account which will be first owner of Ownable smart contract. Store it's private key in file `.first-owner-key`

Both accounts must have non-zero balance in Mumbai (Polygon testnet) network.


And finally, replace all parameters in deploy/transferOwnership function calls in migrations with your values.

### Running
1. Deploy basic NFT
```bash
truffle migrate --network mumbai --f 1 --to 1654688663
```
2. Deploy NFT with contract-level metadata
```bash
truffle migrate --network mumbai --f 1654688697 --to 1654688697
```
3. Deploy Ownable NFT
```bash
truffle migrate --network mumbai --f 1654688722 --to 1654688722
```
4. Transfer ownership
```bash
truffle migrate --network mumbai --f 1654688742 --to 1654688742
```
5. Deploy AccessControl NFT
```bash
truffle migrate --network mumbai --f 1654688757 --to 1654688757
```