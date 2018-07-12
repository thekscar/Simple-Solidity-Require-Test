# Simple-Solidity-Require-Test
A simple example of testing require() in Truffle using Solidity tests. 

## How to run

Ensure `truffle version` is latest  
  
```
Truffle v4.1.13 (core: 4.1.13)
Solidity v0.4.24 (solc-js)
```

Run ganache-cli or if it's not already running  
  
```
ganache-cli -u 0
```

Run Solidity unit tests with 

```
truffle test
```

## Expected output

```
  TestMyContract
    ✓ testInitialStoredValue (52ms)
    ✓ testTheThrow (72ms)
    ✓ testNoThrow (59ms)


  3 passing (625ms)
```
