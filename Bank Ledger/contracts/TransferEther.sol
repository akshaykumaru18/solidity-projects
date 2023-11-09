// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TransferEther {
 
 function transferEther(address payable receipient) public payable{
   receipient.transfer(msg.value);
 }
}
