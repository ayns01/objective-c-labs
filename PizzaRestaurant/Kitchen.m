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
//    if ([self.delegate respondsToSelector:@selector(kitchen:shouldMakePizzaOfSize:andToppings:)]) {
        // kitchen:shouldMakePizzaOfSize:andToppings: が実装されているので、処理をdelegate instanceに委譲します。
        if([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings] == NO) {
            NSLog(@"We'll remove anchobies from your ordered pizza!!");
            NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:toppings];
            [mutableArray removeObject:@"anchobies"];
            toppings = [mutableArray copy];
        }
//    }
    
//    if ([self.delegate respondsToSelector:@selector(kitchenShouldUpgradeOrder:)]) {
        if([self.delegate kitchenShouldUpgradeOrder:self]) {
            size = Large;
        }
//    }
   
    Pizza *pizza = [[Pizza alloc] initWithSize:size Toppings:toppings];
    
    // delegate instanceがkitchenDidMakePizza:メソッドを実装しているか確認します。
    if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
        [self.delegate kitchenDidMakePizza:pizza];
    }
    
    return pizza;
    
}


@end
