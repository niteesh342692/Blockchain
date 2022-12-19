/* Simple program to demonstrate Bank transactions */
pragma solidity ^0.8.13;

contract bank{
    int bal;

    constructor() public {
        bal=1000;
    }

    function getBalance() view public returns (int){
        return bal;
    }

    function withdraw(int amt) public {

        bal = bal-amt;
    }


    function deposit(int amt) public {
        bal = bal + amt;
    }

    
}
