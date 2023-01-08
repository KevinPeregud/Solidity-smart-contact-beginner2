//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HelloKevin{

string public greet = "Hello Kevin!";
// (what) (where) (who)

bool public lightSwitch = true;
// booleans can be true or false

int public students = 30;
// int is the same as int256 and can have negitive numbers

uint public teacher = 1;
// uint is the same as unit256 and omly positive numbers 0 to 2^256 -1
// you can use uint8 to save for smaller numbers 2^8-1

address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
// data type valiables

enum cyborg{cat, dog, girl}
cyborg public January = (cyborg.dog);
bytes1 exampleBit = 0x40;
bytes3 exampleBit3 = "abc";

//reference type variables
//arrays
uint[5] public fiveItems = [1,2,3,4,5];
uint[] public twoNumbers = [20,50];
string[] public myFriends = ["Charles", "Bailey", "Robin"];

string public myName = "Kevin";

//map
mapping (string => int) public points;

struct motorcycle{

    uint enginecc;
    uint hp;
    uint torque;
    string model;
    string brand;

}

motorcycle public forsale = motorcycle(1450, 90, 100, "Dyna Glide","Harley Davidson");

}