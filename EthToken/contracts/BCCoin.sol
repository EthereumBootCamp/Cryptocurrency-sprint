/*
Implements EIP20 token standard: https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
.*/


pragma solidity ^0.4.21;

import "FILL_ME_IN";            // change this line


contract BCCoin is Interface {

    uint256 constant private MAX_UINT256 = 2**256 - 1;
    // declare balances variable here
    mapping (address => mapping (address => uint256)) public allowed;
   
    string public name;                   //fancy name: eg Simon Bucks
    uint8 public decimals;                //How many decimals to show.
    string public symbol;                 //An identifier: eg SBX
    uint8 public tokenValue;              //token value in ethers
    address public Owner;                 //address account who deplyed the contract       


    constructor (
        uint256 _initialAmount,
        string _tokenName,
        uint8 _decimalUnits,
        string _tokenSymbol,
        uint8 _tokenValue
    ) public {
       Owner = msg.sender;
       // your code here
       
    }


    function transfer(address _to, uint256 _value) public  {
       // your code here
    }

    function transferFrom(address _from, address _to, uint256 _value) public  {
        uint256 allowance = allowed[_from][msg.sender];
        // your code here
         
        if (allowance < MAX_UINT256) {
            allowed[_from][msg.sender] -= _value;
        }
     
    }    
   
    function approve(address _spender, uint256 _value) public  {
       // your code here 
    }

    
}