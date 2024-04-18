const {ethers, upgrades} = require("hardhat");

async function main() {
    const ABox = await ethers.getContractFactory("AdminBoxV2");
    console.log("Deploying AdminBoxV2");
    console.log("Upgrading AdminBox")   
    
    await upgrades.upgradeProxy("0x9fE46736679d2D9a65F0992F2272dE9f3c7fa6e0", ABox);
    console.log("AdminBox upgraded successfully")
}

main();