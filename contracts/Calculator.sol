// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./AbstractCalculator.sol";

contract Calculator is AbstractCalculator {
    function calculate(uint256 a, uint256 b, string memory operation) public pure returns (uint256) {
        if (keccak256(bytes(operation)) == keccak256(bytes("add"))) {
            return add(a, b);
        } else if (keccak256(bytes(operation)) == keccak256(bytes("subtract"))) {
            return subtract(a, b);
        } else if (keccak256(bytes(operation)) == keccak256(bytes("multiply"))) {
            return multiply(a, b);
        } else if (keccak256(bytes(operation)) == keccak256(bytes("divide"))) {
            return divide(a, b);
        } else {
            revert("Invalid operation");
        }
    }
}
