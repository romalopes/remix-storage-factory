//  SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{ 
    function store(uint256 _number) public override {
         super.store(_number);
         favoriteNumber += 5;
    }
}
