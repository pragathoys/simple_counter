pragma solidity >0.5.0;

contract SimpleCounter{

	uint256 counter = 0;

	function run() public {
		counter++;
	}
	
	function getValue() public view returns (uint256) {
		return counter;
	}
	
}