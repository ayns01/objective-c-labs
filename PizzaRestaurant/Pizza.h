//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by 酒井綾菜 on 2019-03-10.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSInteger {
    Small,
    Medium,
    Large,
} PizzaSize;

@interface Pizza : NSObject

@property (nonatomic) PizzaSize size;
@property (nonatomic) NSArray *toppings;

-(id)initWithSize:(PizzaSize)size Toppings:(NSArray *)toppings;

- (NSString*)formatTypeToString:(PizzaSize)pizzaSizeFormat;

+ (Pizza *)largePepperoni;

@end

NS_ASSUME_NONNULL_END
