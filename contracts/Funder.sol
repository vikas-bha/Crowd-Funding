// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22 <0.9.0;

contract Funder{
    uint public numOFFunders;
    mapping(uint=>address) private funders;
    receive() external payable{}
    
    function transfer() external payable{
        funders[numOFFunders] = msg.sender;
    }
    function withdraw(uint withdrawAmount) external {
        require(withdrawAmount<=2000000000000000000,"cannot withdraw more than two ethers");
        payable(msg.sender).transfer(withdrawAmount);

    }
}