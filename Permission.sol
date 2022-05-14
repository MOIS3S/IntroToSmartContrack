// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Permission {
    address private owner;
    string public projectName = "Moises";

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can change the project name");
        //la funcion es insertada en donde aparece este simbolo
        _;
    }

    function changeProjectName(string memory _projectName) public onlyOwner {
        projectName = _projectName;
    }
}
