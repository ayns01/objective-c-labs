//
//  main.m
//  Lab2-Boxes
//
//  Created by 酒井綾菜 on 2019-02-26.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        
        Box *box1 = [[Box alloc] initWithHeight:2.0 boxWidth:2.0 boxLength:2.0];
        NSLog(@"Box1 volume: %f", [box1 calcVolume]);
        Box *box2 = [[Box alloc] initWithHeight:3.0 boxWidth:3.0 boxLength:3.0];
        NSLog(@"Box2 volume: %f", [box2 calcVolume]);
        NSLog(@"how many times Box1 will fit inside Box2: %f", [box1 calcHowmanyTimes:box2]);
    }
    return 0;
}
