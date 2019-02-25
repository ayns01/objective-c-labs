//
//  main.m
//  Lab13
//
//  Created by 酒井綾菜 on 2019-02-22.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Piglatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *string = @"smile";
        NSLog(@"string --> %@",string);
        string = [string stringByPigLatinization];
        NSLog(@"pig latin --> %@",string);
    }
    return 0;
}
