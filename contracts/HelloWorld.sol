// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract HelloWorld {
    string public message = "Hello World!";

    constructor() {
        message = "Hello World!";
    }

    function setMEssage(string memory newMessage) public {
        message = newMessage;
    }
}
