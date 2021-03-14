pragma solidity ^0.6.0;

import "../token/TRC20/TRC20Capped.sol";

contract TRC20CappedMock is TRC20Capped {
    constructor (string memory name, string memory symbol, uint256 cap)
        public TRC20(name, symbol) TRC20Capped(cap)
    { }

    function mint(address to, uint256 tokenId) public {
        _mint(to, tokenId);
    }
}
