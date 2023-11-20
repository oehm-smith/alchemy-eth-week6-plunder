// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "./IERC20.sol";
import "hardhat/console.sol";

contract Chest {
    address owner;

    constructor(){
        owner = msg.sender;
    }

    // Fallback function must be declared as external.
//    fallback() external payable {
//        console.log("chest fallback");
//    }

    // Receive is a variant of fallback that is triggered when msg.data is empty
//    receive() external payable {
//        console.log("chest receive");
//    }

    function plunder(address[] memory _addrs) external {
        for (uint i = 0; i < _addrs.length; ++i) {
            console.log("chest plunder - %s", _addrs[i]);
            IERC20 c = IERC20(_addrs[i]);
            uint b = c.balanceOf(address(this));
            console.log("  balance: %s", b);
            c.transfer(msg.sender, b);
        }
    }
}
