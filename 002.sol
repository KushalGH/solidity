pragma solidity ^0.4.20;

contract Coin {
    
    address public minter;
    mapping(address => uint256) balances;
    event Sent(address from, address to, uint256 amount);
    
    function Coin() public {
        minter = msg.sender;
    }
    
    function send(address receiver, uint256 amount) {
        if(balances[msg.sender] > amount) { 
            balances[msg.sender] -= amount;
            balances[receiver] += amount;
            emit Sent(msg.sender, receiver, amount);
        }
    }
    
    function mint(address receiver, uint256 amount) {
        if(msg.sender != receiver) return;
        balances[receiver] += amount;
    }
}