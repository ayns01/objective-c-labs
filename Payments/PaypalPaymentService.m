//
//  PaypalPaymentService.m
//  Payments
//
//  Created by 酒井綾菜 on 2019-03-15.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(nonnull NSInteger *)amount {
    int intamount = (int)amount;
    NSLog(@"Paypal processed amount: %lf", intamount * 1.5);
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
