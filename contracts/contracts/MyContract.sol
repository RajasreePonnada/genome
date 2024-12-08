// // SPDX-License-Identifier: UNLICENSED
// pragma solidity ^0.8.28;

// // Uncomment this line to use console.log
// // import "hardhat/console.sol";

// contract Lock {
//     uint public unlockTime;
//     address payable public owner;

//     event Withdrawal(uint amount, uint when);

//     constructor(uint _unlockTime) payable {
//         require(
//             block.timestamp < _unlockTime,
//             "Unlock time should be in the future"
//         );

//         unlockTime = _unlockTime;
//         owner = payable(msg.sender);
//     }

//     function withdraw() public {
//         // Uncomment this line, and the import of "hardhat/console.sol", to print a log in your terminal
//         // console.log("Unlock time is %o and block timestamp is %o", unlockTime, block.timestamp);

//         require(block.timestamp >= unlockTime, "You can't withdraw yet");
//         require(msg.sender == owner, "You aren't the owner");

//         emit Withdrawal(address(this).balance, block.timestamp);

//         owner.transfer(address(this).balance);
//     }
// }


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MyContract {
    // Struct to represent an attestation
    struct Attestation {
        address issuer;
        uint256 timestamp;
        string data;
    }

    // Mapping to track registered issuers
    mapping(address => bool) public isRegisteredIssuer;

    // Mapping to track attestations for each address
    mapping(address => Attestation[]) public attestations;

    // Event for issuer registration
    event IssuerRegistered(address indexed issuer);

    // Event for new attestation
    event AttestationMade(address indexed issuer, address indexed subject, string data);

    // Register the sender as an issuer
    function registerIssuer() external {
        require(!isRegisteredIssuer[msg.sender], "Already registered as issuer");
        isRegisteredIssuer[msg.sender] = true;

        emit IssuerRegistered(msg.sender);
    }

    // Create an attestation
    function makeAttestation(address subject, string calldata data) external {
        require(isRegisteredIssuer[msg.sender], "Only registered issuers can make attestations");
        require(subject != address(0), "Invalid subject address");

        // Record the attestation
        attestations[subject].push(Attestation({
            issuer: msg.sender,
            timestamp: block.timestamp,
            data: data
        }));

        emit AttestationMade(msg.sender, subject, data);
    }

    // Get all attestations for an address
    function getAttestations(address subject) external view returns (Attestation[] memory) {
        return attestations[subject];
    }
}
