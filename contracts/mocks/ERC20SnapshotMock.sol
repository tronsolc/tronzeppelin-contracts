pragma solidity ^0.6.0;

import "../token/TRC20/TRC20Snapshot.sol";


contract TRC20SnapshotMock is TRC20Snapshot {
    constructor(
        string memory name,
        string memory symbol,
        address initialAccount,
        uint256 initialBalance
    ) public TRC20(name, symbol) {
        _mint(initialAccount, initialBalance);
    }

    function snapshot() public {
        _snapshot();
    }

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) public {
        _burn(account, amount);
    }
}
