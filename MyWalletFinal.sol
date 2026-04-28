

contract MyWalletFinal {

    address public owner;
    
    mapping(address => uint) public balances;

    event Deposited(address user, uint amount);
    event Withdrawn(address user, uint amount);

    constructor() {

        owner = msg.sender;
    }

    function deposit() public payable {
        balances[msg.sender] += msg.value;

        emit Deposited(msg.sender, msg.value);

    }

    function withdraw(uint _amount) public {
        require(balances[msg.sender] >= _amount, "Not enough balance");

        balances[msg.sender] -= _amount;

        payable(msg.sender).transfer(_amount);

        emit Withdrawn(msg.sender, _amount);
    }
}































