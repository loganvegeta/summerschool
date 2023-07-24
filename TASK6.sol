pragma solidity ^0.8.0;

contract EscrowContract {
    address public partyA;
    address public partyB;
    uint256 public depositAmount;
    bool public isFundsReleased;
    
    constructor(address _partyB) payable {
        partyA = msg.sender;
        partyB = _partyB;
        depositAmount = msg.value;
        isFundsReleased = false;
    }
    
    modifier onlyPartyB() {
        require(msg.sender == partyB, "Only Party B can call this function");
        _;
    }
    
    modifier fundsNotReleased() {
        require(!isFundsReleased, "Funds have already been released");
        _;
    }
    
    function releaseFunds() public onlyPartyB fundsNotReleased {
        isFundsReleased = true;
        payable(partyB).transfer(depositAmount);
    }
    
    function getDepositAmount() public view returns (uint256) {
        return depositAmount;
    }
}
