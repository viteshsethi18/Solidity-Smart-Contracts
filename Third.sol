pragma solidity ^0.5.1;

contract mysecond {
    uint256 public peopleCount = 0;
    mapping (uint => Person) public people;
    
    struct Person {
        uint id;
        string firstname;
        string lastname;
    }
    function addperson(string memory firstname, string memory lastname) public {
        peopleCount +=1;
        people[peopleCount] = Person(peopleCount, firstname, lastname);
        
    }
}