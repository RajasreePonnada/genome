
const { ethers } = require("hardhat"); // for Hardhat

const fs = require("fs");

const path = require("path");
async function main() {
    // Get the contract factory
    const provider = new ethers.providers.JsonRpcProvider("https://data-seed-prebsc-1-s1.binance.org:8545/");
  
    const [deployer] = await ethers.getSigners();
    console.log("Deploying contracts with the account:", deployer.address);
    const nonce = await ethers.provider.getTransactionCount(deployer.address);

    const MyContract = await ethers.getContractFactory("MyContract");

    const myContract = await MyContract.deploy({
    nonce: nonce,  // Set the correct nonce here
  });
    await myContract.deployed();


    console.log("Contract deployed to:", myContract.address);
  
    // Save the contract address and ABI to the frontend directory
    const contractData = {
      address: myContract.address,
      abi: JSON.parse(myContract.interface.format(ethers.utils.FormatTypes.json)),
    };
  
     // Ensure the directory exists
  const outputDir = path.join(__dirname, "../../app3/src/contracts");
  if (!fs.existsSync(outputDir)) {
    fs.mkdirSync(outputDir, { recursive: true });
  }

  // Write contract data to the frontend
  fs.writeFileSync(
    path.join(outputDir, "MyContract.json"),
    JSON.stringify(contractData, null, 2)
  );
}
    console.log("Contract data saved to app3/src/contracts/MyContract.json");
  
  
  main()
    .then(() => process.exit(0))
    .catch((error) => {
      console.error(error);
      process.exit(1);
    });

main()
  .then(() => process.exit(0)) // Exit the process after deployment
  .catch((error) => {
    console.error(error);
    process.exit(1); // Exit with error if deployment fails
  });
