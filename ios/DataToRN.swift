
import Foundation



@objc(RNShare)
class RNShare : NSObject {
    
  @objc static func requiresMainQueueSetup() -> Bool {
        return false
    }
  
  
  @objc func share() -> String {
    //print(HelloWorldWrapper().sayHello())
    return HelloWorldWrapper().sayHello()
  }
  
  @objc func someMethod(successCallback: RCTResponseSenderBlock) -> Void {
    successCallback([NSNull(), HelloWorldWrapper().sayHello() as Any])
    }
  

}
