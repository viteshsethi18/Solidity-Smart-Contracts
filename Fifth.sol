pragma solidity ^0.5.1;

contract mysecond {
    uint256 public peopleCount = 0;
    mapping (uint => Person) public people;
    uint256 openingtime = 1592727597;
    modifier onlywhileopen () {
    require(block.timestamp >= openingtime);
    _;
    }
    
    struct Person {
        uint id;
        string firstname;
        string lastname;
    }
   
    function addperson(string memory firstname, string memory lastname) public onlywhileopen {
        incrementcount();
        people[peopleCount] = Person(peopleCount, firstname, lastname);
        
    }
    function incrementcount() internal {
        peopleCount +=1;
    }
}