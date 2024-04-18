// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BoxV2 {
    uint private _value;

    event ValueChanged(uint value);

    function store(uint256 value) public {
        _value = value;
        emit ValueChanged(value);
    }

    // read the last store value
    function retrieve() public view returns (uint256) {
        return _value;
    }

    // increment the stored value by 1
    function increment() public {
        _value = _value + 1;
        emit ValueChanged(_value);
    }
}
// 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512