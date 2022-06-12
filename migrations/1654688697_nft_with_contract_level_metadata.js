const NftForOpenSeaWithContractMetadata = artifacts.require("NftForOpenSeaWithContractMetadata");

module.exports = async function (deployer, network, accounts) {
  await deployer.deploy(
    NftForOpenSeaWithContractMetadata,
    "ipfs://bafkreig45twl5mtmpwpdo3vteffjb33dwawhfmgigbk7upihuddcaxuhle",          // URI of contract-level metadata
    "0x7F886b3649231654A4E3b41124B296d8fcd68676",                                  // single NFT owner
    "ipfs://bafkreiglpboznxavcx3edrgqfbtecanntlhenixusoghdtng5npyn4w4xe"           // NFT metadata URI
  )
};
