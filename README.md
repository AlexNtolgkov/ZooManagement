# ZooManagement Project

## Overview

ZooManagement is a Solidity smart contract project that simulates basic zoo management operations. It allows tracking of animals, their details, and visitor counts using blockchain technology.

## Project Structure

```
.
├── .github/workflows
├── lib
│   └── forge-std
├── src
│   └── ZooManagement.sol
├── .gitignore
├── .gitmodules
├── README.md
└── foundry.toml
```

## Smart Contract: ZooManagement

The main contract `ZooManagement.sol` includes the following features:

- Tracking total visitors
- Managing a list of animals with their species, name, and age
- Mapping animal names to their ages
- Pre-defined animals: Tiger, Bear, and Lion
- Functions to update visitor count, get total visitors, and add new animals

### Key Functions

1. `updateVisitorCount(uint256 _newVisitorCount)`: Updates the total visitor count
2. `getTotalVisitors()`: Returns the current total visitor count
3. `AddAnimal(string memory _species, string memory _name, uint256 _age)`: Adds a new animal to the zoo

## Setup and Installation

This project uses [Foundry](https://book.getfoundry.sh/) for Ethereum development.

1. Install Foundry:
   ```
   curl -L https://foundry.paradigm.xyz | bash
   foundryup
   ```

2. Clone the repository:
   ```
   git clone https://github.com/AlexNtolgkov/ZooManagement.git
   cd ZooManagement
   ```

3. Install dependencies:
   ```
   forge install
   ```

## Building and Testing

- To build the project:
  ```
  forge build
  ```

- To run tests (if any):
  ```
  forge test
  ```

## Deployment

To deploy the contract (replace `<YOUR_RPC_URL>` and `<YOUR_PRIVATE_KEY>`):

```
forge create src/ZooManagement.sol:ZooManagement --rpc-url <YOUR_RPC_URL> --private-key <YOUR_PRIVATE_KEY>
```

## Usage

After deployment, interact with the contract using a tool like [cast](https://book.getfoundry.sh/cast/), ethers.js, or web3.js.

Example:
```
cast send <CONTRACT_ADDRESS> "updateVisitorCount(uint256)" 100 --rpc-url <YOUR_RPC_URL> --private-key <YOUR_PRIVATE_KEY>
```

## Contributing

Contributions are welcome. Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License.
