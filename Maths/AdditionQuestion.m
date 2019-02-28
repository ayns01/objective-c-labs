//
//  AdditionQuestion.m
//  Maths
//
//  Created by 酒井綾菜 on 2019-02-27.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
- (instancetype)init {
    if (self = [super init]) {
        NSInteger min = 10;
        NSInteger max = 100;
        NSInteger randomLeftNumber = min + arc4random_uniform((uint32_t)(max - min + 1));
        NSInteger randomRightNumber = min + arc4random_uniform((uint32_t)(max - min + 1));
        
        _question = [NSString stringWithFormat:@"%ld + %ld ?", randomLeftNumber, randomRightNumber];
        _answer = randomLeftNumber + randomRightNumber;
    }
    return self;
}
@end
