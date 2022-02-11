// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Prueba26 is ERC1155, Ownable {
    constructor() ERC1155("https://raw.githubusercontent.com/Tabupawn/prueba/main/{id}.json") {
     _mint(msg.sender, 1 , 1 , "");
     _mint(msg.sender, 2 , 2 , "");
     _mint(msg.sender, 3 , 2 , "");
     _mint(msg.sender, 4 , 7 , "");
     _mint(msg.sender, 5 , 10 , "");
     _mint(msg.sender, 6 , 10 , "");
     }

function setURI(string memory newuri) public onlyOwner {
      _setURI(newuri);
    }
}
