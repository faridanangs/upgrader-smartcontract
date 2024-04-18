// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Box{
    uint internal _value;

    event ValueChanged(uint value);

    function store(uint256 value) public{
        _value = value;
        emit ValueChanged(value);
    }

    // read the last store value
    function retrieve() public view returns (uint256){
        return _value;
    }
}