# BuyToken Contract

## Overview
The BuyToken contract facilitates the buying and selling of ERC20 tokens. Users can buy tokens by sending Ether to the contract and specifying the recipient address. They can also sell tokens to the contract and receive Ether in return.

## Contract Details
- **Solidity Version**: ^0.8.0
- **License**: MIT
- **External Dependencies**: ERC20.sol

## Contract Functions

1. **Constructor**:
   - Initializes the contract with the specified ERC20 token address and token amount.

2. **buyToken**:
   - Function to buy ERC20 tokens by sending Ether.
   - Parameters:
     - `_receiver`: Address of the recipient who will receive the purchased tokens.
   - Requirements:
     - Sender must send at least 1 Ether (1e18 Wei) to buy tokens.
   - Effects:
     - Mints the specified amount of tokens to the recipient's address.

3. **sellToken**:
   - Function to sell ERC20 tokens to the contract in exchange for Ether.
   - Parameters:
     - `_receiver`: Address of the recipient who will receive the Ether from the token sale.
   - Effects:
     - Transfers tokens from the sender to the contract.
     - Sends Ether (1 Ether or 1e18 Wei) to the specified recipient address.

## Usage
1. Deploy the BuyToken contract, passing the ERC20 token address and the token amount to the constructor.
2. Users can interact with the contract by calling the `buyToken` and `sellToken` functions.
3. Make sure to send enough Ether when buying tokens and specify the recipient address correctly.

## Deployment
1. Ensure you have an ERC20 token contract deployed.
2. Update the `_token` and `_amount` parameters in the constructor when deploying BuyToken.
3. Deploy the BuyToken contract to your desired blockchain network.

## License
This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
