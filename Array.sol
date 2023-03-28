// SPDX-License-Identifier: MIT

/*The contract includes several functions to manipulate and retrieve data from arrays.

                      The contract includes the following functions:

-get(uint i): This function retrieves the element at the specified index i from the arr1 array and returns it.

-getArr(): This function returns the entire arr1 array. However, this function should be avoided because it can grow to an indefinite length and will start costing a lot of gas.

-push(uint i): This function adds the specified element i to the end of the arr1 array.

-pop(): This function removes the last element from the arr1 array and decreases its length by 1.

-getLength(): This function returns the length of the arr1 array.

-remove(uint index): This function removes the element at the specified index index from the arr1 array and sets its value to default 0. However, this function does not change the length of the array.

-examples(): This function creates an array of fixed size in memory.

                     The contract also includes three array declarations:

-arr1: This is an empty dynamic array that can grow to an indefinite length.

-arr2: This is a dynamic array with pre-defined values.

-fixedArray: This is a fixed-size array with a length of 10, and all elements are initialized to 0.
*/


pragma solidity ^0.8.19;

contract Array {
    
    // Several ways to initialize ARRAYS
    uint[] public arr1;
    uint[] public arr2 = [1, 2, 3];

    // Fixed array size, all elemets initialize to 0.
    uint[10] public fixedArray;

    function get(uint i) public view returns (uint) {
        return arr1[i];
    }

    // This function should be avoided because the array 
    // can grow to an indefinite length
    // and it will return the entire array.
    // And will start costing a lot of gas
    function getArr()public view returns (uint[] memory) {
        return arr1;
    }

    function push(uint i) public {
        arr1.push(i);
    // This push function will increase the array by 1     
    }

    function pop() public {
    // This will remove the last element from the array
    // and decrease the length of the array by 1
        arr1.pop();    
    }

    function getLength() public view returns (uint) {
        return arr1.length;
    // Will return the entire length of the array
    }

    function remove(uint index) public {
    // Will remove the data from specified location in the array and reset the value to default 0
    // but will not change the length of the array.
        delete arr1[index]; 
    }

    function examples() external pure {
    // Create an array in memory, only fixed sizes can be created.
        uint[] memory arr4 = new uint[](5);
    
    }
}
