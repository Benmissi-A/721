// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

import {Ownable} from "openzeppelin-contracts/access/Ownable.sol";
import{ERC721} from "openzeppelin-contracts/token/ERC721/ERC721.sol";
import{Counters} from "openzeppelin-contracts/utils/Counters.sol";

contract Label is ERC721, Ownable{
    using Counters for Counters.Counter;
    Counters.Counter private _IdCounter;
    constructor() ERC721("label","LBL"){}

    function safeMint(address to, string memory uri) public onlyOwner {
        uint256 Id = _IdCounter.current();
        _IdCounter.increment();
        _safeMint(Owner,Id);
    }
}