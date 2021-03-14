pragma solidity ^0.6.0;

import "../introspection/TRC165Checker.sol";

contract TRC165CheckerMock {
    using TRC165Checker for address;

    function supportsTRC165(address account) public view returns (bool) {
        return account.supportsTRC165();
    }

    function supportsInterface(address account, bytes4 interfaceId) public view returns (bool) {
        return account.supportsInterface(interfaceId);
    }

    function supportsAllInterfaces(address account, bytes4[] memory interfaceIds) public view returns (bool) {
        return account.supportsAllInterfaces(interfaceIds);
    }
}
