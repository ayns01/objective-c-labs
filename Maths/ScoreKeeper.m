//
//  ScoreKeeper.m
//  Maths
//
//  Created by 酒井綾菜 on 2019-02-27.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightAnswer = 0;
        _wrongAnswer = 0;
        _percentage = 0;
    }
    return self;
}

- (void)count:(BOOL)isRight {
    if(isRight == YES) {
        _rightAnswer++;
    }else {
        _wrongAnswer++;
    }
}

- (void)calcPercent {
    _percentage = (100 / (_wrongAnswer + _rightAnswer) * _rightAnswer);
}
@end
