// SPDX-License-Identifier: MIT

/*The Mapping contract defines a simple mapping from addresses to unsigned integers. 
The myMap mapping is declared as mapping(address => uint) public myMap, 
where address is the key type and uint is the value type. 
The get function takes an address as input and returns the corresponding value from the mapping.
If the address has not been set, the default value (which is 0 for uint) is returned. 
The set function takes an address and a uint as input and sets the corresponding value in the mapping. 
The remove function takes an address as input and resets the corresponding value to the default.
The NestedMapping contract defines a mapping from addresses to nested mappings, 
where the nested mappings associate unsigned integers with booleans. 
The nested mapping is declared as mapping(address => mapping(uint => bool)) public nested, 
where the outer mapping has addresses as keys and the inner mapping has unsigned integers as keys and booleans as values. 
The get function takes an address and an unsigned integer as input and returns the corresponding boolean value from the nested mapping. 
If the address or the integer has not been set, the default value (which is false for bool) is returned. 
The set function takes an address, an unsigned integer, and a boolean as input and sets the corresponding value in the nested mapping. 
The remove function takes an address and an unsigned integer as input and resets the corresponding value to the default.
*/

pragma solidity ^0.8.19;

//mapping(keyType => valueType)

contract Mapping {
    // Mapping from address to unit

    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // Mapping always retrurns a value,
        // if the value was never set it will return default value.
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        // Update the value of the address
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // Reset the value to default
        delete myMap[_addr];

    }
}

contract NestedMapping {
        // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns (bool) {
        // You can get values from a nested mapping
        // even when it is not initialized
        return nested[_addr1][_i];
        // If the address is there returns 'True' if not returns 'False'       
    }

    function set(address _addr1, uint _i, bool _boo) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }
}
