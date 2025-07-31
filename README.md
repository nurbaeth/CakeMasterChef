# 🎂 CakeMasterChef    
     
Welcome to **CakeMasterChef**, the on-chain baking game where YOU are the pastry chef!     
Collect ingredients, bake delicious cakes, and prove you're the sweetest legend on the blockchain.   
   
---   
     
## 🍰 What is CakeMasterChef?   
  
**CakeMasterChef** is a fully on-chain idle-style game written in Solidity.      
You play as a cake master collecting ingredients and baking cakes — all actions are stored on the Ethereum blockchain for provable fairness.
  
🧁 **No tokens. No staking. No rewards. Just pure, sweet fun.**  

---
  
## 🚀 Features
   
- 🧑‍🍳 **Register** as a blockchain pastry chef    
- 🛒 **Collect 3 random ingredients** every day  
- 🧺 **View your inventory** on-chain    
- 🔐 100% Solidity — no off-chain logic  
- 📜 Transparent and verifiable  
  
---
      
## 🧱 Smart Contract Overview

- `register()`: Become a chef!    
- `collectIngredients()`: Collect 3 random ingredients (once per day)  
- `getInventory(ingredient)`: View how many units of each ingredient you own  
- `getAllIngredients()`: See full ingredient list

---

## 🔧 Tech Stack

- 🧠 **Solidity** 0.8.x  
- 📄 Deployed on testnet (coming soon)  
- 🧪 Tested with Foundry/Hardhat (optional)

---

## 🌍 Gameplay Flow

1. Connect your wallet  
2. Call `register()`  
3. Use `collectIngredients()` every 24h  
4. Track your chef inventory  
5. (Coming soon) Bake your favorite cakes!

---

## 📦 Coming Soon

- 🍓 Cake recipes (NFT-style baking output)  
- 🔥 Baking logic + randomness  
- 📈 Leveling up your bakery  
- 🎖️ Leaderboard of top bakers  
- 🖼️ Cake showcase on frontend (off-chain)

---

## 🤖 Example

```solidity
CakeMasterChef game = CakeMasterChef(contractAddress);
game.register();
game.collectIngredients();
uint eggs = game.getInventory("Eggs");
