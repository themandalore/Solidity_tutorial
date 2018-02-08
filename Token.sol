pragma solidity ^0.4.17;

contract Token {

  string public name;
  uint public total_supply;

  mapping(address => uint) balances;

  function Token(uint _supply, string _name) public{
    name = _name;
    total_supply = _supply;
    balances[msg.sender] = _supply;
  }

  function balanceOf(address _owner) public constant returns (uint bal) { return balances[_owner]; }


  function transfer(address _to, uint _amount) public returns (bool success) {
    if (balances[msg.sender] >= _amount
    && _amount > 0
    && balances[_to] + _amount > balances[_to]) {
      balances[msg.sender] = balances[msg.sender] -_amount;
      balances[_to] = balances[_to] + _amount;
      return true;
    } else {
      return false;
    }
  }
}
