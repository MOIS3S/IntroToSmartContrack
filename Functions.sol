// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Number {
    string name = "Moises Castillo";

    function getNumber() private returns (int256 number) {
        number = 1948;
    }

    function changeNumber() public returns (int256 number) {
        number = getNumber() * -1;
    }

    function sendEther(address payable receiver) public payable {
        receiver.transfer(msg.value);
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function sum(int256 a, int256 b) public pure returns (int256 result) {
        result = a + b;
    }
}
