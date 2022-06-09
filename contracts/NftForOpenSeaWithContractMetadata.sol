// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NftForOpenSeaWithContractMetadata is ERC721 {
    string public contractURI_;
    mapping(uint256 => string) public tokenUris;

    constructor(string memory _contractURI, address _to_mint,
        string memory _metaURI) ERC721("OpenSea Test", "TEST") {
        contractURI_ = _contractURI;
        _safeMint(_to_mint, 0);
        tokenUris[0] = _metaURI;
    }

    function tokenURI(uint256 _tokenId) public view override returns (string memory) {
        return tokenUris[_tokenId];
    }

    function contractURI() public view returns (string memory) {
        return contractURI_;
    }
}
