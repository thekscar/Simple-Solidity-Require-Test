/* Testing with solidity tests. */

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/MyContract.sol";

contract TestMyContract {

function testInitialStoredValue() {
    MyContract mycontract = new MyContract();

    uint expected = 24;

    Assert.equal(mycontract.mynumber(), expected, "First number set should be 24.");
}

function testTheThrow() {
    MyContract mycontract = new MyContract(); 

    ThrowProxy throwproxy = new ThrowProxy(address(mycontract)); 

    MyContract(address(throwproxy)).storeNum(7);

    bool r = throwproxy.execute.gas(200000)(); 

    Assert.isFalse(r, "Should be false because is should throw!");

}

function testNoThrow() {
    MyContract mycontract = new MyContract(); 

    ThrowProxy throwproxy = new ThrowProxy(address(mycontract)); 

    MyContract(address(throwproxy)).storeNum(22);

    bool r = throwproxy.execute.gas(200000)(); 

    Assert.isTrue(r, "Should be true because is should throw!");

}

}

// Proxy contract for testing throws
contract ThrowProxy {
  address public target;
  bytes data;

  function ThrowProxy(address _target) {
    target = _target;
  }

  //prime the data using the fallback function.
  function() {
    data = msg.data;
  }

  function execute() returns (bool) {
    return target.call(data);
  }
}
