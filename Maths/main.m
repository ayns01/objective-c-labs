//
//  main.m
//  Maths
//
//  Created by 酒井綾菜 on 2019-02-27.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Maths!\n\n\n");
        NSString *right = @"Right!\n";
        NSString *wrong = @"Wrong!\n";
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        InputHandler *inputHandler = [[InputHandler alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        NSLog(@"If you wanna terminate, write \"quit\"");
        
        while(1)
        {
            Question *q = [[Question alloc] init];
            NSLog(@"%@", [q startTime]);
            [questionManager.questions addObject:q];
            int whichClass = arc4random_uniform((uint32_t)(4));
            NSString *namesOfQuestionClass = [questionFactory.questionSubclassNames objectAtIndex:whichClass];
            Question *subclassOfQuestion = [[NSClassFromString(namesOfQuestionClass)alloc]init];
            NSLog(@"%@", [subclassOfQuestion question]);
            NSString *result = [inputHandler getInput];
            [q answer];
            
            NSInteger intputNumber = [result intValue];
            
            if (intputNumber == [subclassOfQuestion answer]) {
                NSLog(@"%@", right);
                [score count:YES];
                [score calcPercent];
            }else if([result isEqualToString:@"quit"]) {
                break;
            }else {
                NSLog(@"%@", wrong);
                [score count:NO];
                [score calcPercent];
            }
            NSLog(@"END TIME: %@", [q endTime]);
            
            NSLog(@"score: %d right, %d wrong ---- %.2f%%", [score rightAnswer], [score wrongAnswer], [score percentage]);
            NSLog(@"%@", [questionManager timeOutput]);
        }
    }
    return 0;
}
