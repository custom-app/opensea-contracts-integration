const BasicNftForOpenSea = artifacts.require("BasicNftForOpenSea");

module.exports = async function (deployer, network, accounts) {
  await deployer.deploy(
    BasicNftForOpenSea,
    "0x7F886b3649231654A4E3b41124B296d8fcd68676",
    "ipfs://bafkreiglpboznxavcx3edrgqfbtecanntlhenixusoghdtng5npyn4w4xe"
  )
};
