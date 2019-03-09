//
//  GameController.h
//  Lab6-Threelow
//
//  Created by 酒井綾菜 on 2019-03-01.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject
@property NSMutableArray *heldDices;
@property NSMutableArray *dices;

//- (void)holdDie: (NSNumber *)holdNumber;
- (void)holdDie: (NSObject *)holdNumber;
- (void)unHoldDie: (NSNumber *)unholdNumber;
- (void)resetDice;
@end

NS_ASSUME_NONNULL_END
