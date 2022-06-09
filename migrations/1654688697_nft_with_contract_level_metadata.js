const NftForOpenSeaWithContractMetadata = artifacts.require("NftForOpenSeaWithContractMetadata");

module.exports = async function (deployer, network, accounts) {
  await deployer.deploy(
    NftForOpenSeaWithContractMetadata,
    "https://ipfs.io/ipfs/bafkreig45twl5mtmpwpdo3vteffjb33dwawhfmgigbk7upihuddcaxuhle",
    "0x7F886b3649231654A4E3b41124B296d8fcd68676",
    "ipfs://bafkreiglpboznxavcx3edrgqfbtecanntlhenixusoghdtng5npyn4w4xe"
  )
};
