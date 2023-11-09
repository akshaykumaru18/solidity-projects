// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Counter {
 int private count = 0;
 function increment() public{
   count++;
 }

 function decrement() public {
   count--;
 }

 function countState() public view returns (int){
   return count;
 }

}
