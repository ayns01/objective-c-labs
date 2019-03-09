//
//  Dice.m
//  Lab6-Threelow
//
//  Created by 酒井綾菜 on 2019-03-01.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "Dice.h"
#import "DiceFactory.h"

@implementation Dice

- (void)generateRandomValue {
    int intVal = arc4random_uniform((uint32_t)(6)) + 1;
    _diceValue = [NSNumber numberWithInt:intVal];
}

- (void)convertValueToIcon:(NSNumber *)val {
    NSArray *diceIconArray = [[NSArray alloc] initWithObjects:@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅", nil];
    _diceIcon = [NSMutableString stringWithString:[diceIconArray objectAtIndex:val.integerValue - 1]];
}
@end
