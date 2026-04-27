pragma solidity ^0.8.0;

contract MiniBank {

    uint public balance;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function deposit() public payable {
        balance += msg.value;
    }

    function withdraw(uint _amount) public {
        require(msg.sender == owner, "Not owner");
        require(_amount <= balance, "Not enough money");

        balance -= _amount;
        payable(msg.sender).transfer(_amount);
    }
}
