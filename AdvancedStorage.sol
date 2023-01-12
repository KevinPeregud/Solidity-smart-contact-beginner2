//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract AdvancedStorage {
// arrays
uint[] public ids;

function add(uint id) public {
    ids.push(id);
}
// get then the arguement
function get(uint position) view public returns(uint) {
    return ids[position];   
}
// function no arguement 
function getAll() view public returns(uint[] memory) {
    return ids;   
}
function length() view public returns(uint) {
    return ids.length;

}
}