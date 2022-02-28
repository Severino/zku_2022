// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract HelloWorld {
    uint256 public value;
    
    /**
     * Function to set the value 
     */
    function set(uint256 _value) public {
        require(value > 0, "Value not set if it's zero.");
        value= _value;
    }
    
    /**
     * Function to retrieve the Value
     * (Useless as we could retrieve the parameter directly, 
     * public variables are not assignable in solidity so it's fine.)
     * 
     * View indicates we are not changing the state of the blockchain.
     */
     function get() public view returns(uint) {
         return value;
     }
    
}