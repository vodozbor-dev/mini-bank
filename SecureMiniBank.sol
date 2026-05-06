// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SecureMiniBank {

    address public owner;

    mapping(address => uint) public balances;

    event Deposit(address user, uint amount);
    event Withdraw(address user, uint amount);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function getContractBalance() public view onlyOwner returns(uint) {
        return(address(this).balance);
        
    }

    receive() external payable {
        balances[msg.sender] += msg.value;

        emit Deposit(msg.sender, msg.value);
    }

    function withdraw() public {
        uint amount = balances[msg.sender];
        require(amount > 0, "No money");
        balances[msg.sender] = 0;
        (bool success, ) = payable(msg.sender).call{value: amount}("");
        require(success, "Transfer failed");
        emit Withdraw(msg.sender, amount);
    }



}
