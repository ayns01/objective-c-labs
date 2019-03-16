//
//  PaymentGateway.m
//  Payments
//
//  Created by 酒井綾菜 on 2019-03-15.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPaymentAmount:(NSInteger *)amount {
    if([self.paymentDelegate canProcessPayment] == YES) {
        [self.paymentDelegate processPaymentAmount:amount];
    }else {
        NSLog(@"This payment method can not use at this time...");
    }
}

@end
