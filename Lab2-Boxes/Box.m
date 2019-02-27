//
//  Box.m
//  Lab2-Boxes
//
//  Created by 酒井綾菜 on 2019-02-26.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "Box.h"


@implementation Box

- (instancetype)initWithHeight:(float)height boxWidth:(float)width boxLength:(float)length
{
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    
    return self;
}

- (float)calcVolume {
    return self.height * self.width * self.length;
}

- (float)calcHowmanyTimes:(Box *)otherBox {
    return [otherBox calcVolume] / [self calcVolume];
}

@end

