//
//  ManagerWhoHateAnchobies.m
//  PizzaRestaurant
//
//  Created by 酒井綾菜 on 2019-03-10.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "ManagerWhoHateAnchobies.h"

@implementation ManagerWhoHateAnchobies

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if ([toppings containsObject:@"anchobies"]) {
        return NO;
    }else {
        return YES;
    }
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"This pizza doesn't contain any of anchobies!");
}

@end
