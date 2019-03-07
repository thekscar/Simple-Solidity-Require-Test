pragma solidity ^0.5.3; 

contract MyContract {
    uint public mynumber; 
    /* Modified simple storage function. Only stores numbers greater than 10. */

    constructor() public {
        mynumber = 24; 
    }

    function storeNum(uint mynum)
        public
    {
        require(mynum > 10, "must be larger than 10");
        mynumber = mynum; 
    }
}