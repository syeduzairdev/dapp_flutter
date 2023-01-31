// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Migration {
    address public owner = msg.sender;
    uint256 public last_completed_migration;

    modifier restricted() {
        require(
            msg.sender == owner,
            "This function is restricted to the contract's owner"
        );
        _;
    }

    function setCompleted(uint256 completed) public restricted {
        last_completed_migration = completed;
    }

    function upgrade(address new_address) public restricted {
        Migration upgraded = Migration(new_address);
        upgraded.setCompleted(last_completed_migration);
    }
}