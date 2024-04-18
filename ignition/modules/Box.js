const { ethers, upgrades } = require("hardhat")

async function main() {
  const Box = await ethers.getContractFactory("Box");
  console.log("Deploying Box");

  const box = await upgrades.deployProxy(Box, [42], { initializer: 'store' });
  await box.deploymentTransaction();
  upgrades.pro
  console.log('Box deployed to:', await box.getAddress());
}

main();