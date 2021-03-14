pragma solidity ^0.6.0;

import "../../GSN/Context.sol";
import "./TRC721.sol";

/**
 * @title TRC721 Burnable Token
 * @dev TRC721 Token that can be irreversibly burned (destroyed).
 */
abstract contract TRC721Burnable is Context, TRC721 {
    /**
     * @dev Burns a specific TRC721 token.
     * @param tokenId uint256 id of the TRC721 token to be burned.
     */
    function burn(uint256 tokenId) public virtual {
        //solhint-disable-next-line max-line-length
        require(_isApprovedOrOwner(_msgSender(), tokenId), "TRC721Burnable: caller is not owner nor approved");
        _burn(tokenId);
    }
}
