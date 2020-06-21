pragma solidity ^0.5.1;

contract mysecond {
    uint256 public peopleCount = 0;
    mapping (uint => Person) public people;
    address owner;
    modifier onlyowner () {
    require(msg.sender == owner);
    _;
    }
    
    struct Person {
        uint id;
        string firstname;
        string lastname;
    }
    constructor () public {
        owner = msg.sender;
    } 
    function addperson(string memory firstname, string memory lastname) public onlyowner {
        incrementcount();
        people[peopleCount] = Person(peopleCount, firstname, lastname);
        
    }
    function incrementcount() internal {
        peopleCount +=1;
    }
}