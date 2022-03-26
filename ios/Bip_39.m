#import <React/RCTBridgeModule.h>
#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"


@interface RCT_EXTERN_MODULE(Bip_39, NSObject)

RCT_EXTERN_METHOD(phrase: (RCTResponseSenderBlock)callback)

@end
