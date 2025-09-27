// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Project {
    address public owner;
    uint256 public constant TICKET_PRICE = 0.01 ether;
    uint256 public constant MAX_TICKETS = 10;
    uint256 public constant OWNER_FEE_PERCENT = 10;
    
    address[] public players;
    address public lastWinner;
    uint256 public lastWinAmount;
    uint256 public round;
    
    mapping(address => uint256) public playerTicketCount;
    
    event TicketPurchased(address indexed player, uint256 ticketNumber, uint256 round);
    event WinnerSelected(address indexed winner, uint256 amount, uint256 round);
    event NewRoundStarted(uint256 round);
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }
    
    constructor() {
        owner = msg.sender;
        round = 1;
    }
    
    // Core Function 1: Buy lottery ticket
    function buyTicket() external payable {
        require(msg.value == TICKET_PRICE, "Ticket price is 0.01 ETH");
        require(players.length < MAX_TICKETS, "Lottery round is full");
        
        players.push(msg.sender);
        playerTicketCount[msg.sender]++;
        
        emit TicketPurchased(msg.sender, players.length, round);
        
        // If we have enough players, select winner
        if (players.length == MAX_TICKETS) {
            selectWinner();
        }
    }
    
    // Core Function 2: Select winner (internal function called automatically)
    function selectWinner() internal {
        require(players.length == MAX_TICKETS, "Not enough players");
        
        // Generate pseudo-random number
        uint256 randomIndex = uint256(
            keccak256(abi.encodePacked(block.timestamp, block.difficulty, players))
        ) % players.length;
        
        address winner = players[randomIndex];
        uint256 totalPot = address(this).balance;
        uint256 ownerFee = (totalPot * OWNER_FEE_PERCENT) / 100;
        uint256 winnerAmount = totalPot - ownerFee;
        
        // Transfer winnings
        payable(winner).transfer(winnerAmount);
        payable(owner).transfer(ownerFee);
        
        // Record winner info
        lastWinner = winner;
        lastWinAmount = winnerAmount;
        
        emit WinnerSelected(winner, winnerAmount, round);
        
        // Reset for next round
        startNewRound();
    }
    
    // Core Function 3: Get current lottery information
    function getCurrentLotteryInfo() external view returns (
        uint256 currentPot,
        uint256 ticketsSold,
        uint256 ticketsRemaining,
        uint256 currentRound
    ) {
        return (
            address(this).balance,
            players.length,
            MAX_TICKETS - players.length,
            round
        );
    }
    
    // Helper function to start new round
    function startNewRound() internal {
        // Clear player data for new round
        for (uint256 i = 0; i < players.length; i++) {
            playerTicketCount[players[i]] = 0;
        }
        
        delete players;
        round++;
        
        emit NewRoundStarted(round);
    }
    
    // Get player's ticket count in current round
    function getMyTickets() external view returns (uint256) {
        return playerTicketCount[msg.sender];
    }
    
    // Get all players in current round
    function getPlayers() external view returns (address[] memory) {
        return players;
    }
    
    // Get last winner information
    function getLastWinner() external view returns (address, uint256) {
        return (lastWinner, lastWinAmount);
    }
    
    // Emergency function to withdraw funds (only owner)
    function emergencyWithdraw() external onlyOwner {
        payable(owner).transfer(address(this).balance);
    }
}
