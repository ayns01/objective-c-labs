//
//  Dice.h
//  Lab6-Threelow
//
//  Created by 酒井綾菜 on 2019-03-01.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject
@property(nonatomic) NSNumber *diceValue;
@property(nonatomic) NSMutableString *diceIcon;

- (void)generateRandomValue;
- (void)convertValueToIcon:(NSNumber *)val;
@end

NS_ASSUME_NONNULL_END
