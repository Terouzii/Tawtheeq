// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Certificate {
    address public owner;

    struct CertData {
        string name;
        string course;
        string cid; // IPFS CID
        uint256 date;
    }

    mapping(address => CertData[]) private userCertificates;

    event CertificateIssued(address indexed recipient, string name, string course, string cid);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function issueCertificate(address recipient, string memory name, string memory course, string memory cid) public onlyOwner {
        CertData memory cert = CertData(name, course, cid, block.timestamp);
        userCertificates[recipient].push(cert);
        emit CertificateIssued(recipient, name, course, cid);
    }

    function getCertificates(address user) public view returns (CertData[] memory) {
        return userCertificates[user];
    }
}
