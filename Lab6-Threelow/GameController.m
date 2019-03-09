//
//  GameController.m
//  Lab6-Threelow
//
//  Created by 酒井綾菜 on 2019-03-01.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController
- (instancetype)init
{
    self = [super init];
    if (self) {
        _heldDices = [[NSMutableArray alloc] init];
        _dices = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)holdDie: (NSObject *)holdNumber {
    [_heldDices addObject:holdNumber];
}

- (void)unHoldDie: (NSNumber *)unholdNumber {
}

- (void)resetDice {
    [_heldDices removeAllObjects];
}


@end
