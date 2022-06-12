const NftForOpenSeaOwnable = artifacts.require("NftForOpenSeaOwnable");

module.exports = async function (deployer, network, accounts) {
  // have to do this because saving previous migration failed. Better to use NftForOpenSeaOwnable.deployed()
  const instance = await NftForOpenSeaOwnable.at("0xC6B7240D5ccAa4d117da62D11b4FF5c9885DD72F");
  await instance.transferOwnership(
    "0xE19058b26CFf34AFf232B5379D0Ff995d4F0796A",      // new contract owner
    {from: accounts[1]});
};
