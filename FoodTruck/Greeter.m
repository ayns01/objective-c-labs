//
//  MyGreeterController.m
//  FoodTruck
//
//  Created by 酒井綾菜 on 2019-03-13.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

- (void)conversation {
    if ([self.delegate shouldSayHello]) {
        NSLog(@"Hello");
    }else if([self.delegate shouldSayHello] == NO) {
        NSLog(@"...");
    }
}

@end
