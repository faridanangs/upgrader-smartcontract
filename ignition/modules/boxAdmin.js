const { ethers, upgrades } = require("hardhat");

async function main() {
    const AdminBox = await ethers.getContractFactory("AdminBox");
    console.log("Deploying admin box...");

    const adminBox = await upgrades.deployProxy(AdminBox, ["0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266"], {
        initializer: 'initialize'
    });
    await adminBox.deploymentTransaction();
    console.log("Admin box deployed successfully to: ", await adminBox.getAddress())
}

main();