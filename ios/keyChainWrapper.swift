//
//  keyChainWrapper.swift
//  Digital_Signature
//
//  Created by Wynne Tran on 2022-03-23.
//

import Foundation
import SwiftKeychainWrapper

@objc(KeyChainWrapper)
class KeyChainWrapper: NSObject {
  
  // delete warning error
  @objc static func requiresMainQueueSetup() -> Bool {
    return true;
  }
  
  @objc func savePassword(_ password:String, callback: RCTResponseSenderBlock){
    if(KeychainWrapper.standard.set(password, forKey: "password")){
      print( KeychainWrapper.standard.string(forKey: "password") as Any)
      callback([true])
      
    }
    else{
      callback([false])
      
    }
  }
}
