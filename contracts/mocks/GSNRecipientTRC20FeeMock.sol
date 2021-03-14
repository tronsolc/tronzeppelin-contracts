pragma solidity ^0.6.0;

import "../GSN/GSNRecipient.sol";
import "../GSN/GSNRecipientTRC20Fee.sol";

contract GSNRecipientTRC20FeeMock is GSNRecipient, GSNRecipientTRC20Fee {
    constructor(string memory name, string memory symbol) public GSNRecipientTRC20Fee(name, symbol) { }

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }

    event MockFunctionCalled(uint256 senderBalance);

    function mockFunction() public {
        emit MockFunctionCalled(token().balanceOf(_msgSender()));
    }
}
