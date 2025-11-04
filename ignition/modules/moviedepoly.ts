import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const MovieReviewModule = buildModule("MovieReviewModule", (m) => {
  const movieReview = m.contract("MovieReview");

  return { movieReview };
});

export default MovieReviewModule;
