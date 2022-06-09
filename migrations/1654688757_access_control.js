const NftForOpenSeaAccessControl = artifacts.require("NftForOpenSeaAccessControl");

module.exports = async function (deployer, network, accounts) {
  await deployer.deploy(
    NftForOpenSeaAccessControl,
    "0xfe4D28350E00049542d026ecC46746dD05034252",
    "0xE19058b26CFf34AFf232B5379D0Ff995d4F0796A",
    "0x7F886b3649231654A4E3b41124B296d8fcd68676",
    "ipfs://bafkreiglpboznxavcx3edrgqfbtecanntlhenixusoghdtng5npyn4w4xe"
  );
};
