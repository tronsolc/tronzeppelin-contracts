pragma solidity ^0.6.0;

import "../token/TRC20/TRC20Burnable.sol";

contract TRC20BurnableMock is TRC20Burnable {
    constructor (
        string memory name,
        string memory symbol,
        address initialAccount,
        uint256 initialBalance
    ) public TRC20(name, symbol) {
        _mint(initialAccount, initialBalance);
    }
}
