// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ERC20.sol";


contract BuyToken {

    address public token;
    uint256 public amount;

    constructor(address _token , uint256 _amount) {
        token = _token;
        amount = _amount;
    }

    function buyToken(address _reciever) public payable {
        require(msg.value >= 1e18);
       ERC20(token).mint(amount , _reciever);
    }

    function sellToken(address _reciever) public {
        ERC20(token).transferFrom(msg.sender,address(this),amount);
        (bool sent,)= payable(_reciever).call{value : 1e18}("");
    }
}
