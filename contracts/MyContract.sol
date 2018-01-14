pragma solidity ^0.4.18; 

contract MyContract {

    uint public mynumber; 
    /* Modified simple storage function. Only stores numbers greater than 10. */
    
    function MyContract() {
        mynumber = 24; 
    }

    function storeNum(uint mynum)
        public
        returns (bool success)
    {
     require(mynum > 10);
     mynumber = mynum; 
     return true;    
    }
}