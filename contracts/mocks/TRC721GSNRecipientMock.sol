pragma solidity ^0.6.0;

import "../token/TRC721/TRC721.sol";
import "../GSN/GSNRecipient.sol";
import "../GSN/GSNRecipientSignature.sol";

/**
 * @title TRC721GSNRecipientMock
 * A simple TRC721 mock that has GSN support enabled
 */
contract TRC721GSNRecipientMock is TRC721, GSNRecipient, GSNRecipientSignature {
    constructor(string memory name, string memory symbol, address trustedSigner)
        public
        TRC721(name, symbol)
        GSNRecipientSignature(trustedSigner)
    { }

    function mint(uint256 tokenId) public {
        _mint(_msgSender(), tokenId);
    }

    function _msgSender() internal view override(Context, GSNRecipient) returns (address payable) {
        return GSNRecipient._msgSender();
    }

    function _msgData() internal view override(Context, GSNRecipient) returns (bytes memory) {
        return GSNRecipient._msgData();
    }
}
