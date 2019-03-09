//
//  InputHandler.m
//  Lab6-Threelow
//
//  Created by 酒井綾菜 on 2019-03-01.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
- (NSString *)getInput {
    char inputChars[100];
    printf("Input \"roll\" to roll dice!: ");
    fgets(inputChars, 100, stdin);
    NSString *result = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    result = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return result;
}

- (NSString *)getHoldInput {
    char inputChars[100];
    printf("Input a number of index that you wanna hold!\n");
    printf("If it's done, input \"hold\", or if you wanna reset all of held dices, input \"reset\".\n");
    printf("You can reroll 5 times at most.: ");
    fgets(inputChars, 100, stdin);
    NSString *result = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    result = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return result;
}
@end
