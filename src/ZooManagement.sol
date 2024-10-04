
//SPDX-License-Identifier: MIT
pragma solidity 0.8.27;
contract ZooManagement {

	uint256 public totalVisitors;

	struct Animal{
		string species;
		string name;
		uint256 age;
		}

	Animal [] public listofAnimals;

	mapping (string => uint256) public NametoAge;

	Animal public Tiger = Animal("Tiger", "Peanut", 3);
	Animal public Bear = Animal("Bear", "Honey", 4);
	Animal public Lion = Animal("Lion", "Simba", 8);

	function updateVisitorCount(uint256 _newVisitorCount) public {
	    totalVisitors = _newVisitorCount;
	}

	function getTotalVisitors() public view returns(uint256) {
	    return totalVisitors;}

	function AddAnimal(string memory _species, string memory 	_name, uint256 _age) public {
	    listofAnimals.push(Animal(_species, _name, _age));
	    NametoAge[_name]= _age;
	}
	}