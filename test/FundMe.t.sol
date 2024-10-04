// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import { FundMe } from "../src/FundMe.sol";
import { DeployFundMe } from "../script/DeployFundMe.s.sol";

contract FundMeTest is Test {
	FundMe fundMe;

	function setUp() public {
		console.log("Inside setup");
		DeployFundMe deployFundMe = new DeployFundMe();
		fundMe = deployFundMe.run();
	}

	function testMinimumUSD() public view {
		console.log("Inside test_Demo()");
		assertEq(fundMe.MINIMUM_USD(), 5e18);
	}

	function testIOwner() public view {
		// The Testing contract is deploying FundMe
		// Hence, this will be the owner
		assertEq(fundMe.i_owner(), msg.sender); 
	}

	function testAggregatorVersion() public view {
		uint256 version = fundMe.getVersion();
		assertEq(version, 4);
	}
}