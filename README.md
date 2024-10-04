## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

# forge

0. Apply remappings: `forge remappings > remappings.txt`
1. Compile: `forge compile` or `forge build`
2. Test: `forge test`
3. Test with Logs: `forge test -vv`
4. Test with External RPC url: `forge test --rpc-url $SEPOLIA-URL`
4. Directly using contract name: `forge create <Contract_Name> --rpc-url <url> --interactive`
	1. this `--rpc-url` part is also optional as forge will always default to `anvil`'s rpc url.
	2. this `--interactive` flag will trigger the private-key input field
5. Using Deploy Script: `forge script script/SimpleStorage.s.sol --rpc-url <url> --broadcast --private-key <private_key>` [AVOID USING PRIVATE KEY DIRECTLY HERE, USE CAST BEFORE👇]
6. Using Deploy Script with Cast Keys: `forge script script/SimpleStorage.s.sol --rpc-url <url> --account <Key_name> --sender <Key_address> --broadcast -vvvv`

# anvil
## Start local Blockchain network
`anvil`

# Cast
1. Encrypt your Private Key: `cast wallet import <name> --interactive`
2. List all Encrypted keys: `cast wallet list`
3. Get Address by Private Key: `cast wallet address --interactive`
4. Get address by default keystores: `cast wallet address --account metamask_account_1`


# Takeaways

1. Never use your private key associated with real money. Or never store them in plain text. Or use them inside vscode or from your terminal. READ [THIS](https://github.com/Cyfrin/foundry-full-course-cu/discussions/5) for more INFO
