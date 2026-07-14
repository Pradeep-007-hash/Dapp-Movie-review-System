import { ethers } from "hardhat";

async function main() {
  const MovieReview = await ethers.getContractFactory("MovieReview");
  const movieReview = await MovieReview.deploy();
  // wait for deployment (support v6/v5 style)
  if ((movieReview as any).waitForDeployment) {
    await (movieReview as any).waitForDeployment();
  } else if ((movieReview as any).deployed) {
    await (movieReview as any).deployed();
  }
  const address = (movieReview as any).target ?? (movieReview as any).address ?? (await (movieReview as any).getAddress?.());
  console.log("MovieReview deployed to:", address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
