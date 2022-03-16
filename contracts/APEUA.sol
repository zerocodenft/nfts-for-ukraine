/*
 /$$$$$$$$                                /$$$$$$                  /$$           /$$   /$$ /$$$$$$$$ /$$$$$$$$
|_____ $$                                /$$__  $$                | $$          | $$$ | $$| $$_____/|__  $$__/
     /$$/   /$$$$$$   /$$$$$$   /$$$$$$ | $$  \__/  /$$$$$$   /$$$$$$$  /$$$$$$ | $$$$| $$| $$         | $$
    /$$/   /$$__  $$ /$$__  $$ /$$__  $$| $$       /$$__  $$ /$$__  $$ /$$__  $$| $$ $$ $$| $$$$$      | $$
   /$$/   | $$$$$$$$| $$  \__/| $$  \ $$| $$      | $$  \ $$| $$  | $$| $$$$$$$$| $$  $$$$| $$__/      | $$
  /$$/    | $$_____/| $$      | $$  | $$| $$    $$| $$  | $$| $$  | $$| $$_____/| $$\  $$$| $$         | $$
 /$$$$$$$$|  $$$$$$$| $$      |  $$$$$$/|  $$$$$$/|  $$$$$$/|  $$$$$$$|  $$$$$$$| $$ \  $$| $$         | $$
|________/ \_______/|__/       \______/  \______/  \______/  \_______/ \_______/|__/  \__/|__/         |__/
Drop Your NFT Collection With ZERO Coding Skills at https://zerocodenft.com
*/

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ApeInForUkraine is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    uint public constant TOKENS_PER_TRAN_LIMIT = 10;

    bool public isPaused = false;
    address private immutable _beneficiary;
    mapping(uint => Collection) private _collections;
    mapping(uint => uint) private _collectionMintedCount;

    constructor(address beneficiary_) 
    ERC721("ApeInForUkraine", "APEUA"){
        _beneficiary = beneficiary_;

        _collections[1] = Collection(1, 0.015 ether, 1000, "ipfs://QmNSwrTn4UmTe3p3hYnPV9m3UjWMm6ZDcuXFu7MYdrjd1e");
        _collections[2] = Collection(2, 0.03 ether, 1000, "ipfs://QmeESeH2y7RhcUf9CtMcfC59DixZV9qqUz9msQB9smV1oD");
        _collections[3] = Collection(3, 0.03 ether, 1000, "ipfs://QmULvuSaCDxVQHTZJwwSKwY8MgU49HycTub8y28qrpV3Sy");
        _collections[4] = Collection(4, 0.03 ether, 1000, "ipfs://QmVhJAQfLbTKBCVfqsdHDo7tTqyYWtYGBrnyjdsSEcYVee");
    }

    struct Collection {
        uint id;
        uint price;
        uint size;
        string uri;
    }

    function totalSupply() external view returns (uint) {
        return _tokenIds.current();
    }

    function setCollection(Collection calldata collection) external onlyOwner {
        _collections[collection.id] = collection;
    }

    function setPaused(bool value) external onlyOwner {
        isPaused = value;
    }

    function mintedCount(uint collectionId) external view returns (uint) {
        Collection memory collection = _collections[collectionId];
        require(collection.id != 0, "APEUA: Invalid collectionId");
        return _collectionMintedCount[collectionId];
    }

    /// @notice Withdraw contract's balance
    function withdraw() external onlyOwner {
        uint balance = address(this).balance;
        require(balance > 0, "No balance");
        
        payable(_beneficiary).transfer(balance);
    }

    /// @notice Allows owner to mint tokens to a specified address
    function airdrop(address to, uint collectionId, uint count) external onlyOwner {
        Collection memory collection = _collections[collectionId];
        require(collection.id != 0, "APEUA: Invalid collectionId");
        require(_tokenIds.current() + count <= collection.size, "Request exceeds collection size");
        _mintTokens(to, count, collection.uri);
    }
    
    function mint(uint count, uint collectionId) external payable {
        require(!isPaused, "APEUA: Sales are off");

        Collection memory collection = _collections[collectionId];

        require(collection.id != 0, "APEUA: Invalid collectionId");    
        require(count <= TOKENS_PER_TRAN_LIMIT, "APEUA: Requested token count exceeds allowance (10)");
        require(_collectionMintedCount[collectionId] + count <= collection.size, "APEUA: Number of requested tokens will exceed limit");
        require(msg.value >= count * collection.price, "APEUA: Ether value sent is not sufficient");

        _collectionMintedCount[collectionId] += count;
        _mintTokens(msg.sender, count, collection.uri);
    }

    /// @dev Perform actual minting of the tokens
    function _mintTokens(address to, uint count, string memory tokenUri) internal {
        for(uint index = 0; index < count; index++) {

            _tokenIds.increment();
            uint newItemId = _tokenIds.current();

            _safeMint(to, newItemId);
            _setTokenURI(newItemId, tokenUri);
        }
    }

}