#import <React/RCTBridgeModule.h>
#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"
@interface RCT_EXTERN_MODULE(RNShare, NSObject)

RCT_EXTERN_METHOD(share)
RCT_EXTERN_METHOD(someMethod:(RCTResponseSenderBlock)successCallback)

@end
