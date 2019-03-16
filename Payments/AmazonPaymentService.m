//
//  AmazonPaymentService.m
//  Payments
//
//  Created by 酒井綾菜 on 2019-03-15.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(nonnull NSInteger *)amount {
    int intamount = (int)amount;
    NSLog(@"Amazon processed amount: %lf", intamount * 0.9);
}

- (BOOL)canProcessPayment {
    int judge = arc4random_uniform((uint32_t)(2));
    if (judge == 0) {
        return NO;
    }else {
        return YES;
    }
}


@end
