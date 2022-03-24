//
//  C_to_S.swift
//  Digital_Signature
//
//  Created by Wynne Tran on 2022-03-24.
//

import Foundation

@objc(C_to_S)
class C_to_S : NSObject {
    
  @objc static func requiresMainQueueSetup() -> Bool {
        return false
    }
  
  
//  @objc func HelloC(_ successCallback: RCTResponseSenderBlock) {
//    successCallback([NSNull(), factorial(5) as Any])
//
//    }
  
  @objc func HelloC(_ num:(Int), callback: RCTResponseSenderBlock) {
    callback([NSNull(), factorial(Int32(num)) as Any])

    }
  

}

