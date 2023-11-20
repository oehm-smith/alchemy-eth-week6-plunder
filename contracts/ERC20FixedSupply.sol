//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20FixedSupply is ERC20 {
//    uint constant _initial_supply = 100 * (10**18);
//    mapping(address => uint256) balance;
//    uint public totalSupply;

    constructor(uint _initial_supply) ERC20("ERCFixedSupply", "EFS") {
        _mint(msg.sender, _initial_supply);
    }
}
