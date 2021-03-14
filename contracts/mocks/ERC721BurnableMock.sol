pragma solidity ^0.6.0;

import "../token/TRC721/TRC721Burnable.sol";

contract TRC721BurnableMock is TRC721Burnable {
    constructor(string memory name, string memory symbol) public TRC721(name, symbol) { }

    function mint(address to, uint256 tokenId) public {
        _mint(to, tokenId);
    }
}
