pragma solidity >=0.4.22 <0.6.0;
import "remix_tests.sol";
import "./SimpleCounter.sol";

contract test{

	SimpleCounter simple_counter;
	
	function beforeAll() public{
		simple_counter = new SimpleCounter();
	}
	
	function checkRun() public{ 
		simple_counter.run();
		Assert.equal( simple_counter.getValue() , uint(1), "Value in 'counter' variable should be 1");
	}
	
}