// SPDX-License-Identifier: MIT

// How to use constructors to initialize contracts with parameters

pragma solidity ^0.8.19;

// Contract X 

contract X {

    string public name;

    constructor(string memory _name){
        name = _name;

    }

}
// Contract Y

contract Y {

    string public text;

    constructor(string memory _text){
        text = _text;

    }

}

// There are two ways to intialize parent contracts with paramemetrs

// Pass the parametrs here in the inheritence list

contract B is X("Input X"), Y("Input Y"){

}

//Second way

contract C is X, Y {
    //Pass the parameters in the constructor
    //Similar to a function modifiers
    constructor(string memory _name, string memory _text) X(_name) Y(_text){}
}
// Parent constructor are always called in the order of inheritence
// Order of constructor called
// 1. X
// 2. Y
// 3. D

contract D is X, Y {
    constructor() X("X was called") Y("Y was called"){}
}

// Order of constructor called
// 1. X
// 2. Y
// 3. E

contract E is Y, X{
    constructor() Y("Y was called") X("X was called"){}
}
//Contract E inherits from contracts Y and X,
// and initializes them with the string parameters "Y was called" and "X was called", respectively,
// in its constructor. Note that even though Y is listed first in the inheritance list,
// X's constructor is still called first because it appears first in the constructor.