// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CakeMasterChef {
    struct Player {
        bool registered;
        uint256 lastCollected;
        mapping(string => uint256) inventory;
    }

    mapping(address => Player) private players;

    string[] public ingredientList = [
        "Flour",
        "Sugar",
        "Eggs",
        "Butter",
        "Milk",
        "Strawberries",
        "Chocolate"
    ];

    event Registered(address player);
    event IngredientsCollected(address player, string[] ingredients);

    modifier onlyRegistered() {
        require(players[msg.sender].registered, "Not registered yet");
        _;
    }

    function register() external {
        require(!players[msg.sender].registered, "Already registered");
        players[msg.sender].registered = true;
        emit Registered(msg.sender);
    }

    function collectIngredients() external onlyRegistered {
        require(
            block.timestamp >= players[msg.sender].lastCollected + 1 days,
            "Come back tomorrow"
        );
        players[msg.sender].lastCollected = block.timestamp;

        string ;

        for (uint256 i = 0; i < 3; i++) {
            string memory ing = randomIngredient(i);
            players[msg.sender].inventory[ing]++;
            collected[i] = ing;
        }

        emit IngredientsCollected(msg.sender, collected);
    }

    function getInventory(string calldata ingredient) external view onlyRegistered returns (uint256) {
        return players[msg.sender].inventory[ingredient];
    }

    function randomIngredient(uint256 seed) internal view returns (string memory) {
        uint256 rand = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender, seed))) % ingredientList.length;
        return ingredientList[rand];
    }

    function getAllIngredients() external view returns (string[] memory) {
        return ingredientList;
    }
}
