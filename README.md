# CineReview: Decentralized Movie Review System (DApp)

CineReview is a premium Decentralized Application (DApp) designed to store and retrieve movie reviews transparently and immutably on the Ethereum blockchain. Users connect their MetaMask Web3 wallets to publish review ratings and read on-chain reviews from peers, bypassing centralized review platforms.

---

## Key Features

* **Web3 Identity Integration**: Pure MetaMask wallet connection for secure, password-less authentication.
* **On-Chain Reviews**: Movie reviews (ratings, timestamps, and IPFS hash contents) are recorded directly onto the Ethereum blockchain.
* **OMDb API Integration**: Fetch real-time movie posters, plots, genres, and metadata from the OMDb database by title search.
* **IPFS Content Resolution**: Resolves and displays full review contents stored on decentralized storage gateways (like Cloudflare IPFS).
* **Glassmorphic UI**: Sleek, modern dark-mode design with glowing components and Outfit typography.

---

## Complete Tech Stack

### 1. Smart Contracts & Blockchain
* **Language**: Solidity (`^0.8.0`) - compiled and deployed using Hardhat.
* **Smart Contracts**: `MovieReview` contract ([Moviereview.sol](contracts/Moviereview.sol)) storing arrays of reviews mapped to OMDb movie IMDB IDs.
* **Network**: Ethereum Sepolia Testnet (pre-configured) / Local Ethereum developer network.

### 2. Frontend / Client Client
* **Languages**: HTML5, Vanilla JavaScript (ES6+).
* **Styling**: Premium custom Vanilla CSS3 (dark theme, glassmorphic styling system, animations, custom properties).
* **Web3 Interface**: Ethers.js (v5.7.2, imported via CDN) mapping MetaMask's `window.ethereum` RPC provider.
* **Third-Party APIs**:
  * **OMDb API**: Movie metadata search engine.
  * **Cloudflare IPFS Gateway**: For fetching large text payloads off-chain.

### 3. Development Tools & Infrastructure
* **Hardhat Framework**: Compiler, runner, and deployer orchestrating contract lifecycles.
* **TypeScript & Node.js**: Scripting and configuration tools driving compilation and tests.
* **http-server**: Standard web-server package to host and serve static front-end assets locally.
* **Dotenv**: Environment configuration controller (`.env` file loader).

---

## How to Run the Project

### Prerequisites
* [Node.js](https://nodejs.org/) installed.
* [MetaMask Extension](https://metamask.io/) installed in your browser.

### 1. Setup and Install Dependencies
Open your terminal in the `Dapp-Movie-review-System` directory and run:
```bash
npm install
```

### 2. Configure Environment Variables (Optional)
If you want to redeploy the contract to Sepolia, copy the `.env.example` file to `.env` and fill in your values:
```bash
SEPOLIA_RPC_URL=https://sepolia.infura.io/v3/YOUR_INFURA_PROJECT_ID
PRIVATE_KEY=YOUR_METAMASK_PRIVATE_KEY
```

### 3. Start the Web Server
Launch the HTTP server to serve the frontend:
```bash
npm start
```
This serves the application locally at **[http://localhost:3000](http://localhost:3000)**.

### 4. Open in the Browser
Open your browser and navigate to **[http://localhost:3000/login.html](http://localhost:3000/login.html)**. 
* Click the **Connect MetaMask Wallet** button.
* Make sure MetaMask is connected to the **Sepolia Test Network**.
* Search for movies, write ratings, and fetch reviews!
