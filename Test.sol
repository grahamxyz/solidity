pragma solidity ^0.4.20;

contract Test {
	address creator;
	string address;

//returns creator address as bytes32 string

	function Test(address creator) returns (bytes32) public {
		creator = msg.sender;
		 bytes32 memory creatorAddress = new bytes32;
  	for (uint i = 0; i < 20; i++) {
        	creatorAddress[i] = byte(uint8(uint(x) / (2**(8*(19 - i)))));
    		return string(creatorAddress);
		}
	
	}

//self-destruct function
	function suicide() public {
		if (msg.sender == creator) {
			selfdestruct(creator);
		}
  	}
}
