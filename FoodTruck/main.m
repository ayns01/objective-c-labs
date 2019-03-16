//
//  main.m
//  FoodTruck
//
//  Created by 酒井綾菜 on 2019-03-13.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"
#import "FriendlyGreetingDecider.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Greeter *greeter = [[Greeter alloc] init];
        
        FriendlyGreetingDecider *greetingDecider = [[FriendlyGreetingDecider alloc] init];
        
        greeter.delegate = greetingDecider;
        
        [greeter conversation];
    }
    return 0;
}
