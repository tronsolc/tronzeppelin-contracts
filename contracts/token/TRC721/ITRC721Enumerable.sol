pragma solidity ^0.6.0;

import "./ITRC721.sol";

/**
 * @title TRC-721 Non-Fungible Token Standard, optional enumeration extension
 * @dev See https://eips.ethereum.org/EIPS/eip-721
 */
abstract contract ITRC721Enumerable is ITRC721 {
    function totalSupply() external view virtual returns (uint256);
    function tokenOfOwnerByIndex(address owner, uint256 index) external view virtual returns (uint256 tokenId);

    function tokenByIndex(uint256 index) external view virtual returns (uint256);
}
