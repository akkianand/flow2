# CryptoPoops Contract

The CryptoPoops contract is an implementation of a non-fungible token (NFT) standard. It allows users to create, manage non-fungible tokens.

## Features

- **Non-Fungible Tokens (NFTs)**: Each token is unique and represents a digital asset with properties like name, favorite food, and lucky number.
- **Token Collection Management**: Users can create collections to manage their owned NFTs, including depositing, withdrawing, and borrowing tokens.
- **Minter Functionality**: The contract includes a minter resource to create new NFTs and mint them to users.

## Usage

### Creating NFTs

To create a new NFT, users can interact with the `Minter` resource by calling the `createNFT` function, providing details such as the name, favorite food, and lucky number.

### Managing Token Collections

Users can manage their token collections by interacting with the `Collection` resource. They can deposit, withdraw, and borrow NFTs within their collection using appropriate functions provided by the contract.

### Borrowing Authenticated NFTs

The contract includes functionality for borrowing authenticated NFTs. Users can call the `borrowAuthNFT` function, providing the ID of the NFT they wish to borrow. Authenticated NFTs are borrowed with authentication, ensuring secure access to sensitive tokens.

## Deployment

Deploy the CryptoPoops contract on the 0x09 blockchain platform to start creating and managing non-fungible tokens.

## Example

```typescript
// Example usage of the CryptoPoops contract
// Deploy the contract
let cryptoPoopsContract = deploy CryptoPoops

// Create a new NFT
let nft = cryptoPoopsContract.minter.createNFT("My CryptoPoop", "Pizza", 7)

// Deposit the NFT into a collection
let collection = cryptoPoopsContract.createEmptyCollection()
collection.deposit(nft)
