pragma solidity ^0.6.0;

import "./ITRC721.sol";

/**
 * @title TRC-721 Non-Fungible Token Standard, optional metadata extension
 * @dev See https://eips.ethereum.org/EIPS/eip-721
 */
abstract contract ITRC721Metadata is ITRC721 {
    function name() external view virtual returns (string memory);
    function symbol() external view virtual returns (string memory);
    function tokenURI(uint256 tokenId) external view virtual returns (string memory);
}
