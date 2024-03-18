import CryptoPoops from 0x09;
import NonFungibleToken from 0x09;

pub fun main( index:UInt64 , user: Address) {

    let recipientsCollections = getAccount(user).getCapability(/public/MyCollection)
        .borrow<&CryptoPoops.Collection{CryptoPoops.PublicBorrowAuthNFT}>()
        ?? panic("The recipient does not have a Collection.")

    var Nft = recipientsCollections.borrowAuthNFT(id: index) 

    log(Nft.luckyNumber) ; 
    log(Nft.name);
    log(Nft.favouriteFood);
}
