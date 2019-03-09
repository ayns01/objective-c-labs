//
//  main.m
//  Lab6-Threelow
//
//  Created by 酒井綾菜 on 2019-03-01.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *inputHandler = [[InputHandler alloc] init];
        GameController *gameController = [[GameController alloc] init];
        NSMutableArray *holdIndexArray = [[NSMutableArray alloc] init];
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
        [gameController.dices addObject:dice1];
        [gameController.dices addObject:dice2];
        [gameController.dices addObject:dice3];
        [gameController.dices addObject:dice4];
        [gameController.dices addObject:dice5];
        
        BOOL gameOn = YES;
        while(gameOn)
        {
            NSString *result = [inputHandler getInput];
            
            if([result isEqualToString:@"roll"]) {
                
                for (Dice *dice in [gameController dices]) {
                    unichar firstChar = [[dice diceIcon] characterAtIndex:0];
                    if (firstChar == '[') {
                        // Nothing to do if it is held
                    }else {
                        [dice generateRandomValue]; // EX. {1, 4, 6, 3, 2};
                        [dice convertValueToIcon:[dice diceValue]]; // EX. {⚀, ⚃, ⚅, ⚂, ⚁};
                    }
                }

                NSLog(@"%@ %@ %@ %@ %@", [dice1 diceIcon], [dice2 diceIcon], [dice3 diceIcon], [dice4 diceIcon], [dice5 diceIcon]);
            }
            
            while(1)
            {
                NSString *holdIndex = [inputHandler getHoldInput];
                
                if ([holdIndex isEqualToString:@"hold"]) {
                    break;
                }else if ([holdIndex isEqualToString:@"reset"]) {
                    [gameController resetDice];
                }
                    int holdIndexNumber = [holdIndex intValue];
                    [gameController holdDie:[gameController dices][holdIndexNumber-1]];
                    [holdIndexArray addObject:[NSNumber numberWithInt:holdIndexNumber]]; // EX.{1, 3}
            }
            
            for (Dice *heldDice in [gameController heldDices]) {
                unichar firstChar = [[heldDice diceIcon] characterAtIndex:0];
                if (firstChar == '[') {
                    // Nothing to do if it is held
                }else {
                    [[heldDice diceIcon] insertString:@"[" atIndex:0];
                    [[heldDice diceIcon] insertString:@"]" atIndex:2];
                    }
            }
            
            NSLog(@"%@ %@ %@ %@ %@", [dice1 diceIcon], [dice2 diceIcon], [dice3 diceIcon], [dice4 diceIcon], [dice5 diceIcon]);
            
            int res = 0;
            for (Dice *dice in [gameController heldDices]) {
                res += [[dice diceValue] intValue];
            }
            NSLog(@"Your current score is %d", res);
            
        }
    }
    return 0;
}
