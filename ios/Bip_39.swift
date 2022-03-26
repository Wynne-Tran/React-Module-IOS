
import Foundation
import Bip39


@objc(Bip_39)
class Bip_39 : NSObject {
    
  @objc static func requiresMainQueueSetup() -> Bool {
        return false
    }
  
  
  @objc func random_Generated_Mnemonic() -> String {
    
     // 128bit mnemonic by default
     let mnemonic = try! Mnemonic()

     // Obtaining phrase. English by default. Returns string array
     let phrase = mnemonic.mnemonic().joined(separator: " ")

     print("Mnemonic: ", phrase)
    
     return phrase
    
    }
  
  @objc func phrase(_ callback: RCTResponseSenderBlock) {
    callback([NSNull(), random_Generated_Mnemonic() as Any])

    }
  
  @objc func mnemonic_From_Bip39_String() {
    // Mnemonic phrase
    let phrase = "rally speed budget undo purpose orchard hero news crunch flush wine finger"

    // Creating mnemonic. English wordlist by default
    let mnemonic = try! Mnemonic(mnemonic: phrase.components(separatedBy: " "))

    // 128 bit entropy
    print("Entropy: ", mnemonic.entropy)
  }
  
  @objc func seed_From_Mnemonic() {
    // Mnemonic phrase
    let phrase = "rally speed budget undo purpose orchard hero news crunch flush wine finger"

    // Creating mnemonic. English wordlist by default
    let mnemonic = try! Mnemonic(mnemonic: phrase.components(separatedBy: " "))

    // Empty password and English wordlist by default
    let seed = mnemonic.seed()

    print("Seed: ", seed)
  }
  
  @objc func check_Bip39_String_Is_Valid() {
    // Mnemonic phrase
    let phrase = "rally speed budget undo purpose orchard hero news crunch flush wine finger"

    // Validation. English wordlist by default
    let isValid = Mnemonic.isValid(phrase: phrase.components(separatedBy: " "))

    print("Valid: ", isValid)
  }
  

}
