
//
//  keyChainWrapper.m
//  Digital_Signature
//
//  Created by Wynne Tran on 2022-03-23.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(KeyChainWrapper, NSObject)
RCT_EXTERN_METHOD(savePassword:(NSString*)password callback: (RCTResponseSenderBlock)callback;)
@end


