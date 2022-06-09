// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract NftForOpenSeaAccessControl is ERC721, Ownable, AccessControl {
    mapping(uint256 => string) public tokenUris;

    constructor(address _owner, address _admin, address _to_mint,
        string memory _metaURI) ERC721("OpenSea Test", "TEST") Ownable() {
        _safeMint(_to_mint, 0);
        tokenUris[0] = _metaURI;
        _transferOwnership(_owner);
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    }

    function tokenURI(uint256 _tokenId) public view override returns (string memory) {
        return tokenUris[_tokenId];
    }

    /// @dev supports interface for inheritance conflict resolving.
    function supportsInterface(
        bytes4 interfaceId
    ) public view virtual override(ERC721, AccessControl) returns (bool) {
        return ERC721.supportsInterface(interfaceId) ||
        AccessControl.supportsInterface(interfaceId);
    }
}
