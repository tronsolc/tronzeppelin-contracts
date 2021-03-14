pragma solidity ^0.6.0;

import "../token/TRC721/TRC721.sol";

/**
 * @title TRC721Mock
 * This mock just provides a public safeMint, mint, and burn functions for testing purposes
 */
contract TRC721Mock is TRC721 {
    constructor (string memory name, string memory symbol) public TRC721(name, symbol) { }

    function exists(uint256 tokenId) public view returns (bool) {
        return _exists(tokenId);
    }

    function setTokenURI(uint256 tokenId, string memory uri) public {
        _setTokenURI(tokenId, uri);
    }

    function setBaseURI(string memory baseURI) public {
        _setBaseURI(baseURI);
    }

    function mint(address to, uint256 tokenId) public {
        _mint(to, tokenId);
    }

    function safeMint(address to, uint256 tokenId) public {
        _safeMint(to, tokenId);
    }

    function safeMint(address to, uint256 tokenId, bytes memory _data) public {
        _safeMint(to, tokenId, _data);
    }

    function burn(uint256 tokenId) public {
        _burn(tokenId);
    }
}
