//
//  main.m
//  Payments
//
//  Created by 酒井綾菜 on 2019-03-15.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        PaypalPaymentService *paypal = [[PaypalPaymentService alloc] init];
        StripePaymentService *stripe = [[StripePaymentService alloc] init];
        AmazonPaymentService *amazon = [[AmazonPaymentService alloc] init];
        
        NSInteger *doller = (NSInteger *)100 + arc4random_uniform((uint32_t)(901)); // 100 + (0 ~ 900)

        NSLog(@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", (long)doller);
        NSLog(@"> ");
        char str[100];
        fgets (str, 100, stdin);
        
        NSString *inputString = [[NSString alloc] initWithUTF8String:str];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        int paymentNum = [inputString intValue];
        NSLog(@"Input was %d", paymentNum);
        
        switch (paymentNum) {
            case 1:
                paymentGateway.paymentDelegate = paypal;
                break;
            case 2:
                paymentGateway.paymentDelegate = stripe;
                break;
            case 3:
                paymentGateway.paymentDelegate = amazon;
                break;
                
            default:
                break;
        }
        
        [paymentGateway processPaymentAmount:doller];
        
    }
    return 0;
}
