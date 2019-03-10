//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by 酒井綾菜 on 2019-03-10.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

-(id)initWithSize:(PizzaSize)size
                   Toppings:(NSArray *)toppings {
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    } return self;
}

- (id) init {
    return [self initWithSize:Medium Toppings:@[@"ham", @"pineapple", @"cheese"]];
}

- (NSString*)formatTypeToString:(PizzaSize)pizzaSizeFormat {
    NSString *result = nil;
    
    switch(pizzaSizeFormat) {
        case Small:
            result = @"Small";
            break;
        case Medium:
            result = @"Medium";
            break;
        case Large:
            result = @"Large";
            break;
        default:
            [NSException raise:NSGenericException format:@"Unexpected pizzaSize."];
    }
    
    return result;
}

//+ (Pizza *)largePepperoni {
//    
//}
@end
