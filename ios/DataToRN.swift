
import Foundation



@objc(RNShare)
class RNShare : NSObject {
    
  @objc static func requiresMainQueueSetup() -> Bool {
        return false
    }
  
  
  @objc func someMethod(_ successCallback: RCTResponseSenderBlock) -> Void {
    successCallback([NSNull(), HelloWorldWrapper().sayHello() as Any])
    
    }
  

}

