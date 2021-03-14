pragma solidity ^0.6.0;

import "../token/TRC20/TRC20.sol";

// mock class using TRC20
contract TRC20Mock is TRC20 {
    constructor (
        string memory name,
        string memory symbol,
        address initialAccount,
        uint256 initialBalance
    ) public payable TRC20(name, symbol) {
        _mint(initialAccount, initialBalance);
    }

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) public {
        _burn(account, amount);
    }

    function transferInternal(address from, address to, uint256 value) public {
        _transfer(from, to, value);
    }

    function approveInternal(address owner, address spender, uint256 value) public {
        _approve(owner, spender, value);
    }
}
