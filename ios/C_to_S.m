#import <React/RCTBridgeModule.h>
#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"
@interface RCT_EXTERN_MODULE(C_to_S, NSObject)

RCT_EXTERN_METHOD(HelloC: (int)num callback: (RCTResponseSenderBlock)callback;)
@end
