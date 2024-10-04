// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import { Script } from "forge-std/Script.sol";

contract HelperConfig is Script {
	struct NetworkConfig {
		address priceFeedAddr;
	}

	NetworkConfig public config;

	constructor () {
		if (block.chainid == 11155111) {
			config = getSepoliaConfig();
		} else if (block.chainid == 1) {
			config = getMainnetConfig();
		} else {
			config = getLocalAnvilConfig();
		}
	}

	function getSepoliaConfig() public pure returns (NetworkConfig memory) {
		return NetworkConfig({
			priceFeedAddr: 0x694AA1769357215DE4FAC081bf1f309aDC325306
		});
	}

	function getMainnetConfig() public pure returns (NetworkConfig memory) {
		return NetworkConfig({
			priceFeedAddr: 0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419
		});
	}

	function getLocalAnvilConfig () public pure returns (NetworkConfig memory) {
		return NetworkConfig({
			priceFeedAddr: 0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419
		});
	}
}