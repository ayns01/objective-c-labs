//
//  QuestionManager.m
//  Maths
//
//  Created by 酒井綾菜 on 2019-02-28.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSString *)timeOutput {
    NSTimeInterval totalTime = 0;
    for (Question *question in _questions) {
        totalTime += [question answerTime];
    }
    Question *lastQuestion = [_questions objectAtIndex:[_questions count] - 1];
    return [NSString stringWithFormat:@"total time: %.1fs, average time: %.1fs", -totalTime, -[lastQuestion answerTime]];
}
@end
