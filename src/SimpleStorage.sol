// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 private myFavoriteNumber;

    struct Person {
        string name;
        uint256 favoriteNumber;
    }

    mapping(string => uint256) public userToFavoriteNum;
    Person[] public personsArray;

    function store(uint256 _myFavoriteNumber) public virtual {
        myFavoriteNumber = _myFavoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _fvN) public {
        userToFavoriteNum[_name] = _fvN;
        Person memory p = Person(_name, _fvN);
        // personsArray.push(Person(_name, _fvN))
        // personsArray.push(Person({name:_name, favoriteNumber:_favoriteNumber}))
        personsArray.push(p);
    }
}
