// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Abstract
interface USDC {
  function balanceOf(address account) external view returns (uint256);
  function allowance(address owner, address spender) external view returns (uint256);
  function transfer(address recipient, uint256 amount) external returns (bool);
  function approve(address spender, uint256 amount) external returns (bool);
  function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
}

// Contract
contract UsdcDemo{
  USDC public USDc;

  // Contract Owner
  address payable public owner;
  constructor(address usdcContractAddress) {
    USDc = USDC(usdcContractAddress);

    // User who is calling this function address
    owner = payable(msg.sender);
  }

  function Fund(uint $USDC, address recipient) public payable {
    // Transfer USDC to this contract from the sender account
    USDc.transferFrom(msg.sender, address(this), $USDC * 10 ** 6); 

    // Transfer to the recipient
    USDc.transfer(recipient, $USDC * 10 ** 6); 
  }
}

