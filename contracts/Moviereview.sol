// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MovieReview {
    struct Review {
        string ipfsHash;
        uint8 rating; // 1 to 5
        address reviewer;
        uint256 timestamp;
    }

    mapping(string => Review[]) private movieReviews;
    mapping(string => mapping(address => bool)) private hasReviewed;

    event ReviewAdded(string movieId, string ipfsHash, uint8 rating, address reviewer, uint256 timestamp);

    function addReview(
        string memory _movieId,
        string memory _ipfsHash,
        uint8 _rating
    ) public {
        require(_rating >= 1 && _rating <= 5, "Rating must be between 1 and 5");
        require(!hasReviewed[_movieId][msg.sender], "You already reviewed this movie");

        Review memory newReview = Review({
            ipfsHash: _ipfsHash,
            rating: _rating,
            reviewer: msg.sender,
            timestamp: block.timestamp
        });

        movieReviews[_movieId].push(newReview);
        hasReviewed[_movieId][msg.sender] = true;

        emit ReviewAdded(_movieId, _ipfsHash, _rating, msg.sender, block.timestamp);
    }

    function getReviews(string memory _movieId) public view returns (Review[] memory) {
        return movieReviews[_movieId];
    }

    function getReviewCount(string memory _movieId) public view returns (uint256) {
        return movieReviews[_movieId].length;
    }
}
