//
//  PaymentGateway.h
//  Payments
//
//  Created by 酒井綾菜 on 2019-03-15.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
// PaymentGateway will be the delegator
@protocol PaymentDelegate <NSObject>

- (void)processPaymentAmount:(NSInteger *)amount;
- (BOOL)canProcessPayment;

@end


@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;

- (void)processPaymentAmount:(NSInteger *)amount;

@end

NS_ASSUME_NONNULL_END
