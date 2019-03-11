//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    // delegate instanceが kitchen:shouldMakePizzaOfSize:andToppings: メソッドを実装しているか確認します。
    if ([self.delegate respondsToSelector:@selector(kitchen:shouldMakePizzaOfSize:andToppings:)]) {
        // kitchen:shouldMakePizzaOfSize:andToppings: が実装されているので、処理をdelegate instanceに委譲します。
        if([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings] == NO) {
            NSLog(@"We don't make the pizza...");
        }
    }
    
    if ([self.delegate respondsToSelector:@selector(kitchenShouldUpgradeOrder:)]) {
        if([self.delegate kitchenShouldUpgradeOrder:self] == YES) {
            size = Large;
        }
    }
}


@end
