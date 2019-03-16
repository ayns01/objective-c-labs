//
//  StripePaymentService.m
//  Payments
//
//  Created by 酒井綾菜 on 2019-03-15.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(nonnull NSInteger *)amount {
    int intamount = (int)amount;
    NSLog(@"Stripe processed amount: %lf", intamount * 1.2);
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
