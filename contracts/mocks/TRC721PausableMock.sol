pragma solidity ^0.6.0;

import "../token/TRC721/TRC721Pausable.sol";

/**
 * @title TRC721PausableMock
 * This mock just provides a public mint, burn and exists functions for testing purposes
 */
contract TRC721PausableMock is TRC721Pausable {
    constructor (string memory name, string memory symbol) public TRC721(name, symbol) { }

    function mint(address to, uint256 tokenId) public {
        super._mint(to, tokenId);
    }

    function burn(uint256 tokenId) public {
        super._burn(tokenId);
    }

    function exists(uint256 tokenId) public view returns (bool) {
        return super._exists(tokenId);
    }

    function pause() external {
        _pause();
    }

    function unpause() external {
        _unpause();
    }
}
