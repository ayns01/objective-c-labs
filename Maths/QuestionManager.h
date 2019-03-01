//
//  QuestionManager.h
//  Maths
//
//  Created by 酒井綾菜 on 2019-02-28.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject
@property NSMutableArray *questions;

-(NSString *)timeOutput;

@end

NS_ASSUME_NONNULL_END
