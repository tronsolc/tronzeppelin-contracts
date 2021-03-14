pragma solidity ^0.6.0;

import "../token/TRC20/TRC20.sol";

contract TRC20DecimalsMock is TRC20 {
    constructor (string memory name, string memory symbol, uint8 decimals) public TRC20(name, symbol) {
        _setupDecimals(decimals);
    }
}
