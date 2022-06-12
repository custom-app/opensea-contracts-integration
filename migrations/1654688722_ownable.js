const NftForOpenSeaOwnable = artifacts.require("NftForOpenSeaOwnable");

module.exports = async function (deployer, network, accounts) {
  await deployer.deploy(
    NftForOpenSeaOwnable,
    "0xfe4D28350E00049542d026ecC46746dD05034252",                             // contract owner address
    "0x7F886b3649231654A4E3b41124B296d8fcd68676",                             // single NFT owner
    "ipfs://bafkreiglpboznxavcx3edrgqfbtecanntlhenixusoghdtng5npyn4w4xe"      // NFT metadata URI
  );
};
