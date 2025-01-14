pragma solidity ^0.6.0;

import "../../introspection/ITRC165.sol";

/**
 * @dev Required interface of an TRC721 compliant contract.
 */
abstract contract ITRC721 is ITRC165 {
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /**
     * @dev Returns the number of NFTs in ``owner``'s account.
     */
    function balanceOf(address owner) external view virtual returns (uint256 balance);

    /**
     * @dev Returns the owner of the NFT specified by `tokenId`.
     */
    function ownerOf(uint256 tokenId) external view virtual returns (address owner);

    /**
     * @dev Transfers a specific NFT (`tokenId`) from one account (`from`) to
     * another (`to`).
     *
     *
     *
     * Requirements:
     * - `from`, `to` cannot be zero.
     * - `tokenId` must be owned by `from`.
     * - If the caller is not `from`, it must be have been allowed to move this
     * NFT by either {approve} or {setApprovalForAll}.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId) external virtual;
    /**
     * @dev Transfers a specific NFT (`tokenId`) from one account (`from`) to
     * another (`to`).
     *
     * Requirements:
     * - If the caller is not `from`, it must be approved to move this NFT by
     * either {approve} or {setApprovalForAll}.
     */
    function transferFrom(address from, address to, uint256 tokenId) external virtual;
    function approve(address to, uint256 tokenId) external virtual;
    function getApproved(uint256 tokenId) external view virtual returns (address operator);

    function setApprovalForAll(address operator, bool _approved) external virtual;
    function isApprovedForAll(address owner, address operator) external view virtual returns (bool);


    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external virtual;
}
