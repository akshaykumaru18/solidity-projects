// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract BankLedger {
  
  struct Transaction{
    string id;
    address from_acc;
    address to_acc;
    string transaction_type;
    int amount;
    string message;
  }

  Transaction[] public transactions;

  function createTransaction(string memory id,
  address payable from_acc,
  address payable to_acc,
  string memory transaction_type,
  int amount, 
  string memory message)public payable{
    Transaction memory  transaction = Transaction(id,from_acc,to_acc,transaction_type,amount,message);
    transactions.push(transaction);
    to_acc.transfer(msg.value);

  }

  function getTransactions() public view returns(Transaction[] memory){
    return transactions;
  } 


}
