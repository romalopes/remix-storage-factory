//  SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorages;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        listOfSimpleStorages.push(simpleStorage);
    }

    function stSore(uint256 _contractIndex, uint256 _number) public {
        listOfSimpleStorages[_contractIndex].store(_number);
        // SimpleStorage simpleStorage = SimpleStorage(listOfSimpleStorages[_contractIndex]);
        // simpleStorage.store(_number);
    }

    function stGet(uint256 _contractIndex) view public returns (uint256){
        return listOfSimpleStorages[_contractIndex].retrieveFavoriteNumbe();
    }
}

