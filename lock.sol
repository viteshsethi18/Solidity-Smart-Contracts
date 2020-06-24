pragma solidity ^0.5.1;

contract timelock {
    
    address payable beneficiary;
    uint256 releasetime;
    
    constructor (address payable _beneficiary, uint256 _releasetime) public payable {
        require (_releasetime > block.timestamp);
        beneficiary = _beneficiary;
        releasetime = _releasetime;
    }
    
    function release() public {
        require(block.timestamp >= releasetime);
        address(beneficiary).transfer(address(this).balance);
    }
}