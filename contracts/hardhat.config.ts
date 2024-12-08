require('@nomiclabs/hardhat-ethers');
// import type { HardhatUserConfig } from "hardhat/config";
// import "@nomicfoundation/hardhat-toolbox-viem";
import dotenv from "dotenv";
require('dotenv').config();



// Load environment variables from .env file
dotenv.config();


const config: HardhatUserConfig = {
  
    solidity: "0.8.0",
    networks: {
      bscTestnet: {
        url: "https://data-seed-prebsc-1-s1.binance.org:8545/",
        accounts: [process.env.PRIVATE_KEY] // Replace with your private key
      }
    
    }
};

export default config;
