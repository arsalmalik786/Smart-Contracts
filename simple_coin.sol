// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract simpleCoin {
    address public minter;

    mapping ( address => uint ) public balanceOf;

    constructor (){
        minter = msg.sender;

    }
    function mint ( address receiver, uint amount ) public {
        balanceOf[receiver] += amount;
    }

}