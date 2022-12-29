pragma solidity ^0.5.9;

contract Greeter  {
    string public yourName;  // data
    
    /* This runs when the contract is executed */
    constructor(string memory name) public {
        if(keccak256(bytes(name)) == keccak256(bytes("")))
            yourName = "World";
        else
            yourName = name;
    }    
    function hello() view public returns (string memory) {
        return string(abi.encodePacked("Hello, ",yourName,"!"));
    }
}
