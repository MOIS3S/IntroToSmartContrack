// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Error {
    string public state = "onSale";

    error StateNotDefined(uint256 unit);

    function changeState(uint256 newState) public {
        // one way to define an error
        require(newState == 0 || newState == 1, "this state is not defined");
        if (newState == 0) {
            state = "onSale";
        } else if (newState == 1) {
            state = "notForSale";
        } else {
            // another way to define an error
            revert StateNotDefined(newState);
        }
    }
}
