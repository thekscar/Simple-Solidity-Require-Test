pragma solidity ^0.4.21; 

contract MyContract {

  uint public mynumber; 
  /* Modified simple storage function. Only stores numbers greater than 10. */
  
  constructor() 
    public 
  {
    mynumber = 24; 
  }

  function storeNum(uint mynum)
    public
  {
    require(mynum > 10);
    mynumber = mynum; 
   
  }
}