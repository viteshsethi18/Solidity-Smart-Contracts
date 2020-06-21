pragma solidity ^0.5.1;

contract mysecond {
    Person[] public people;
    uint256 public peopleCount;
    struct Person {
        string firstname;
        string lastname;
    }
    function addperson(string memory firstname, string memory lastname) public {
        people.push(Person(firstname, lastname));
        peopleCount +=1;
    }
}