pragma solidity ^0.8.13;
 
contract test
{
    uint a1;
    uint b1;
    uint Sum;
 
 
    function set(uint x, uint y) public
    {
        a1 = x;
        b1 = y;
        Sum = a1+b1;
    }
    function get()public view returns(uint)
    {
        return Sum;
    }
}
