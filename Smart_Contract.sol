// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SmartContract 
{
    string public message;
    uint256 public value;
    address public owner;

    constructor(string memory initMessage) 
    {
        message = initMessage;
        owner = msg.sender;
        value = 0;
    }

    function setMessage(string memory newMessage) public 
    {
        message = newMessage;
    }

    function getMessage() public view returns (string memory)
    {
        return message;
    }

    function incrementValue() public 
    {
        value++;
    }

    function getValue() public view returns (uint256) {
        return value;
    }
}



