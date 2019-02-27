//
//  Box.h
//  Lab2-Boxes
//
//  Created by 酒井綾菜 on 2019-02-26.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Box : NSObject

@property float height;
@property float width;
@property float length;

- (instancetype)initWithHeight:(float)height boxWidth:(float)width boxLength:(float)length;
- (float)calcVolume;
- (float)calcHowmanyTimes:(Box *)otherBox;

@end
