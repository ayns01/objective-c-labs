//
//  main.m
//  Maths
//
//  Created by 酒井綾菜 on 2019-02-27.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        NSLog(@"If you wanna terminate, write \"quit\"");
        while(1)
        {
            AdditionQuestion *q = [[AdditionQuestion alloc] init];
            NSLog(@"%@", [q question]);
            NSString *result = [InputHandler getInput];
            NSInteger intputNumber = [result intValue];
            
            if (intputNumber == [q answer]) {
                NSLog(@"Right!");
                [score count:YES];
            }else if([result isEqualToString:@"quit"]) {
                [score calcPercent];
                break;
            }else {
                NSLog(@"Wrong!");
                [score count:NO];
            }
            
        }
        NSLog(@"score: %dright, %dwrong ---- %d%%", [score rightAnswer], [score wrongAnswer], [score percentage]);
    }
    return 0;
}
