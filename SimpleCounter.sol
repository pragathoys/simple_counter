pragma solidity >0.5.0;

contract SimpleCounter{

	unint256 counter = 0;

	function run() public {
		counter++;
	}
	
}