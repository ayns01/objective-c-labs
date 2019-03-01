//
//  InputHandler.m
//  Maths
//
//  Created by 酒井綾菜 on 2019-02-27.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "InputHandler.h"
#import "Question.h"

@implementation InputHandler
- (NSString *)getInput {
    char inputChars[100];
    printf("Input an answer: ");
    fgets(inputChars, 100, stdin);
    NSString *result = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    result = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return result;
}
@end
