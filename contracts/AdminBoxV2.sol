// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "./AdminBox.sol";

contract AdminBoxV2 is AdminBox{
    function increment() public{
        _value++;
        emit ValueChanged(_value);
    }
}