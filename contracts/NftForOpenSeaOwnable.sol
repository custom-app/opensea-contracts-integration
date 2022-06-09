// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NftForOpenSeaOwnable is ERC721, Ownable {
    mapping(uint256 => string) public tokenUris;

    constructor(address _owner, address _to_mint,
        string memory _metaURI) ERC721("OpenSea Test", "TEST") Ownable() {
        _safeMint(_to_mint, 0);
        tokenUris[0] = _metaURI;
        _transferOwnership(_owner);
    }

    function mint(address _to, uint256 _id) external onlyOwner {
        _safeMint(_to, _id);
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        return tokenUris[tokenId];
    }
}
