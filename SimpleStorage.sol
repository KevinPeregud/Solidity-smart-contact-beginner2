//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract SimpleStorage {
    // define a variable, where or visablity, declare the variable
    string public data;
    // create a function to chamge the data variable
    // fuction set then we need to create a varible'string'then the location 'memory'
    // then the name of the variable _data, because can't use data
    function set(string memory _data) public{
        data = _data;
     // red button is the setter
     // blue is the getter   
    }
    // create a getter function, this function has no arguements() 
    // view to read the storage of the smart contract, pure only reads inside
    // then the return type of the function, sting memory is a temporary variable
    function get() view public returns(string memory) {
        return data;

    }

}