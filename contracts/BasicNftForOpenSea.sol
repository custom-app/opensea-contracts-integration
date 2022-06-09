// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNftForOpenSea is ERC721 {
    mapping(uint256 => string) public tokenUris;

    constructor(address _to_mint,
        string memory _metaURI) ERC721("OpenSea Test", "TEST") {
        _safeMint(_to_mint, 0);
        tokenUris[0] = _metaURI;
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        return tokenUris[tokenId];
    }
}
