pragma solidity ^0.6.0;

import "../introspection/TRC165.sol";

contract TRC165Mock is TRC165 {
    function registerInterface(bytes4 interfaceId) public {
        _registerInterface(interfaceId);
    }
}
