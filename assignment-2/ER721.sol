// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://raw.githubusercontent.com/nibbstack/erc721/master/src/contracts/tokens/nf-token-metadata.sol";
import "https://raw.githubusercontent.com/nibbstack/erc721/master/src/contracts/ownership/ownable.sol";

contract newNFT is NFTokenMetadata, Ownable {
    constructor() {
        nftName = "Blockgames NFT";
        nftSymbol = "BLN";
    }

    function mint(
        address _to,
        uint256 _tokenId,
        string calldata _uri
    ) external onlyOwner {
        super._mint(_to, _tokenId);
        super._setTokenUri(_tokenId, _uri);
    }
}
