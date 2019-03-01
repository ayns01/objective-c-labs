//
//  AdditionQuestion.h
//  Maths
//
//  Created by 酒井綾菜 on 2019-02-27.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property(nonatomic, copy) NSString *question;
@property(nonatomic) NSInteger answer;
@property(nonatomic, strong) NSDate *startTime;
@property(nonatomic, strong) NSDate *endTime;
@property(nonatomic) NSInteger rightValue;
@property(nonatomic) NSInteger leftValue;

- (NSTimeInterval)answerTime;
- (void)generateQuestion;

@end

NS_ASSUME_NONNULL_END
