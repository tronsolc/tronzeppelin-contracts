pragma solidity ^0.6.0;

import "./ITRC721Receiver.sol";

contract TRC721Holder is ITRC721Receiver {
    function onTRC721Received(address, address, uint256, bytes memory) public virtual override returns (bytes4) {
        return this.onTRC721Received.selector;
    }
}
