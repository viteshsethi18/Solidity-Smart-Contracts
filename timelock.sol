pragma solidity ^0.5.1;

import "./token.sol";
contract tokentimelock {
    Token public token;
    address public beneficiary;
    uint256 public releasetime;
    
    constructor (Token _token, address _beneficiary, uint256 _releasetime) public {
        require(_releasetime > block.timestamp);
        token = _token;
        beneficiary = _beneficiary;
        releasetime = _releasetime;
    }
    
    function release() public {
        require(block.timestamp >= releasetime);
        uint256 amount = token.balanceOf(address (this));
        require(amount > 0);
        token.transfer(beneficiary, amount);
        
    }
}