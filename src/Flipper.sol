// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Flipper{
    bool public value;

    constructor() {
        value=true;
    }

    function getValue () external returns(bool) {
        return value;
    }

    function flip () external{
        value = !value;
    }
}
