# Mini Bank (Smart Contracts)

Simple Ethereum smart contracts project built in Solidity.

##  Contracts

### MiniBank.sol
Basic contract with:
- deposit ETH
- withdraw ETH (only owner)

### MyWalletFinal.sol
Improved version with:
- deposit ETH
- withdraw ETH
- mapping balances per user
- events (Deposited, Withdrawn)

---

##  Functions

- deposit() — send ETH to contract  
- withdraw(uint amount) — withdraw your ETH  

---

##  Security

- Cannot withdraw more than balance  
- Uses require() checks  

---

##  Events

- Deposited(address user, uint amount)  
- Withdrawn(address user, uint amount)  

---

##  What I learned

- mappings
- msg.sender / msg.value
- payable
- require
- events
- basic smart contract structure

##  Author

vodozbor-dev  

