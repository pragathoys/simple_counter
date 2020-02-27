pragma solidity >0.6.0;
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

	function checkReset() public{ 
		simple_counter.run();
		simple_counter.reset();
		Assert.equal( simple_counter.getValue() , uint(0), "Value in 'counter' variable should be 0 after each reset");
	}


	function checkRunTwice() public{ 
		simple_counter.reset();
		simple_counter.run();
		simple_counter.run();
		Assert.equal( simple_counter.getValue() , uint(2), "Value in 'counter' variable should be 2 after runing twice");
	}	
	
}