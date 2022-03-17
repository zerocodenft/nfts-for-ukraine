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
import "./Base64.sol";

contract ApeInForUkraine is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    using Strings for uint;
    Counters.Counter private _tokenIds;

    uint public constant TOKENS_PER_TRAN_LIMIT = 10;

    bool public isPaused = false;
    address private immutable _beneficiary;
    mapping(uint => Collection) private _collections;
    mapping(uint => uint) private _collectionMintedCount;

    constructor(address beneficiary_) 
    ERC721("ApeInForUkraine", "APEUA"){
        _beneficiary = beneficiary_;
        _collections[1] = Collection(1, 0.015 ether, 1000, "Remarkable Ukrainian",  "ipfs://QmetKB1nPZJUV78KTu2gnWvCSDnLvwreWZuVRvQfngesnn");
        _collections[2] = Collection(2, 0.03 ether, 1000, "World of Ukrainian Women", "ipfs://QmPAHNweTECJDKj72VdqaxwAARkuXGirXrgP1Rq7dk4bSr");
        _collections[3] = Collection(3, 0.03 ether, 1000, "Ukrainian Gopnik", "ipfs://QmctC5DHb64qNvybuDToWHY7xxSpnL1GQ92xmpbSBDJTBb");
        _collections[4] = Collection(4, 0.03 ether, 1000, "Torrent", "ipfs://QmYvmQrq3dnD8b5VenxBtU8ySG3pY3wcksGbSK1AgivsbX");
        _collections[5] = Collection(5, 0.06 ether, 300, "Zelensky Punk", "ipfs://QmStvhVzbV17DBe6XCmdh4E3Hr5KnKWC7r3LVqvddPq86x");
    }

    struct Collection {
        uint id;
        uint price;
        uint size;
        string name;
        string imageUri;
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
        _mintTokens(to, count, collection);
    }
    
    function mint(uint count, uint collectionId) external payable {
        require(!isPaused, "APEUA: Sales are off");

        Collection memory collection = _collections[collectionId];

        require(collection.id != 0, "APEUA: Invalid collectionId");    
        require(count <= TOKENS_PER_TRAN_LIMIT, "APEUA: Requested token count exceeds allowance (10)");
        require(_collectionMintedCount[collectionId] + count <= collection.size, "APEUA: Number of requested tokens will exceed limit");
        require(msg.value >= count * collection.price, "APEUA: Ether value sent is not sufficient");

        _mintTokens(msg.sender, count, collection);
    }

    /// @dev Perform actual minting of the tokens
    function _mintTokens(address to, uint count, Collection memory collection) internal {
        for(uint index = 0; index < count; index++) {

            _tokenIds.increment();
            uint newItemId = _tokenIds.current();

            uint nextInCollection = _collectionMintedCount[collection.id];
            string memory name = string(abi.encodePacked(collection.name, " #", (nextInCollection+1).toString()));
            string memory tokenUri = formatTokenURI(collection.imageUri, name);

            _collectionMintedCount[collection.id] += 1;
            _safeMint(to, newItemId);
            _setTokenURI(newItemId, tokenUri);
        }
    }

    function formatTokenURI(string memory _imageURI, string memory _name) private pure returns (string memory) {
        return string(
            abi.encodePacked(
                "data:application/json;base64,",
                Base64.encode(
                    bytes(
                        abi.encodePacked(
                            '{"name":"', _name,
                            '", "description":"Join people around the world in using the power of cryptocurrency to undermine Putin\'s efforts of destruction"',
                            ', "image":"', _imageURI, '"}'
                        )
                    )
                )
            )
        );
    }

}