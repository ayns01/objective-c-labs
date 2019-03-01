//
//  divisionQuestion.m
//  Maths
//
//  Created by 酒井綾菜 on 2019-02-28.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    // set super.answer here
    // set super.question here
    super.answer = super.leftValue / super.rightValue;
    super.question = [NSString stringWithFormat:@"%ld / %ld ?", super.leftValue, super.rightValue];
}
@end
