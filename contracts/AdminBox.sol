// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract AdminBox is Initializable {
    uint256 internal _value;
    address public _addmin;

    event ValueChanged(uint256 value);

    function initialize(address admin) public initializer {
        _addmin = admin;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function store(uint256 value) public {
        require(msg.sender == _addmin, "Admin Box: not admin");
        _value = value;
        emit ValueChanged(value);
    }

    function retrieve() public view returns (uint) {
        return _value;
    }
}
