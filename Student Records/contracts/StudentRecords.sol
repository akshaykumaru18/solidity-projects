// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract StudentRecords {
  string[]  public students;

  function createStudent(string memory name) public {
    students.push(name);
  }

  function getStudents() public view returns (string[] memory){
    return students;
  }

  function deleteStudent(string memory name) public { 
   for(uint i = 0; i < students.length; i++){
     if(keccak256(abi.encodePacked((students[i]))) == keccak256(abi.encodePacked((name)))){
        delete students[i];
     }
   }
  }

}
