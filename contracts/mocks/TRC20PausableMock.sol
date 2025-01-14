pragma solidity ^0.6.0;

import "../token/TRC20/TRC20Pausable.sol";

// mock class using TRC20Pausable
contract TRC20PausableMock is TRC20Pausable {
    constructor (
        string memory name,
        string memory symbol,
        address initialAccount,
        uint256 initialBalance
    ) public TRC20(name, symbol) {
        _mint(initialAccount, initialBalance);
    }

    function pause() external {
        _pause();
    }

    function unpause() external {
        _unpause();
    }

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) public {
        _burn(from, amount);
    }
}
