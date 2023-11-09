// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;


contract HelloWorld {
  string public initialString = "Hello World How Are You!!";

    function getString() public view returns (string memory) {
        return initialString;
    }
}
