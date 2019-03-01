//
//  AdditionQuestion.m
//  Maths
//
//  Created by 酒井綾菜 on 2019-02-27.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "Question.h"

@implementation Question
- (instancetype)init {
    if (self = [super init]) {
        NSInteger min = 10;
        NSInteger max = 100;
//        NSInteger randomLeftNumber = min + arc4random_uniform((uint32_t)(max - min + 1));
//        NSInteger randomRightNumber = min + arc4random_uniform((uint32_t)(max - min + 1));
//        _question = [NSString stringWithFormat:@"%ld + %ld ?", randomLeftNumber, randomRightNumber];
//        _answer = randomLeftNumber + randomRightNumber;
        _leftValue = min + arc4random_uniform((uint32_t)(max - min + 1));
        _rightValue = min + arc4random_uniform((uint32_t)(max - min + 1));
        
        _question = [NSString stringWithFormat:@"%ld + %ld ?", _leftValue, _rightValue];
        _answer = _leftValue + _rightValue;
        
        _startTime = [NSDate date];
    }
    return self;
}

// overriding getter
- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime {
    return [_startTime timeIntervalSinceDate:_endTime];
}

- (void)generateQuestion {
    
}
@end
