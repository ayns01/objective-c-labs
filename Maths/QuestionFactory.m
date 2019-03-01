//
//  QuestionFactory.m
//  Maths
//
//  Created by 酒井綾菜 on 2019-02-28.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion",
                                   @"SubtractionQuestion",
                                   @"MultiplicationQuestion",
                                   @"DivisionQuestion"];
    }
    return self;
}
@end
