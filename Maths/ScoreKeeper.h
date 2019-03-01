//
//  ScoreKeeper.h
//  Maths
//
//  Created by 酒井綾菜 on 2019-02-27.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject
@property int rightAnswer;
@property int wrongAnswer;
@property float percentage;

- (void)count:(BOOL)isRight;
- (void)calcPercent;
@end

NS_ASSUME_NONNULL_END
