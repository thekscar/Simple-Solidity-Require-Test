# Simple-Solidity-Require-Test
A simple example of testing require() in Truffle using Solidity tests. 

## How to run

Ensure `truffle version` is latest  
  
```
Truffle v5.0.7 (core: 5.0.7)
Solidity v0.5.3
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
