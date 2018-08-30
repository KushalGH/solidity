//The keyword pragma is called that way because, in general, pragmas are 
//instructions for the compiler about how to treat the source code

pragma solidity ^0.4.24;

contract SimpleStorage { 
    
    uint256 storedData;
    function Set(uint256 x) public {
        storedData = x;
    }
    
    function Get() returns (uint256) {
        return storedData;
    }
}