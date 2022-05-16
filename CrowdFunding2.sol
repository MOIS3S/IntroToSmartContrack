// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract CrowdFunding {
    string public id;
    string public name;
    string public description;
    address payable public author;
    string public state = "Opened";
    uint256 public funds;
    uint256 public fundRaisingGoal;

    constructor(
        string memory _id,
        string memory _name,
        string memory _description,
        uint256 _fundRaisingGoal
    ) {
        id = _id;
        name = _name;
        description = _description;
        fundRaisingGoal = _fundRaisingGoal;
        author = payable(msg.sender);
    }

    modifier isAuthor() {
        require(author == msg.sender, "You need to be the project author");
        _;
    }

    modifier isNotAuthor() {
        require(
            author != msg.sender,
            "As author you can't no fund your own project"
        );
        _;
    }

    function fundProject() public payable isNotAuthor {
        author.transfer(msg.value);
        funds += msg.value;
    }

    function changeProjectState(string calldata newstate) public isAuthor {
        state = newstate;
    }
}
