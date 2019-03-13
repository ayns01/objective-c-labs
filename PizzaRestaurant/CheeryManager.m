//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by 酒井綾菜 on 2019-03-10.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
        return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"From chef at Copin: It's your pizza!\nSize:%@\nToppings%@\n You look so nice:)", [pizza formatTypeToString:pizza.size], pizza.toppings);
}
@end
