//
//  main.m
//  PizzaRestaurant
//
//  Created by 酒井綾菜 on 2019-03-08.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            NSString *commandWordsForSize = commandWords[0];
            PizzaSize size = Medium;
            
            NSMutableArray *toppingsCopy = [commandWords mutableCopy];
            [toppingsCopy removeObjectAtIndex:0];
            NSArray *toppings = toppingsCopy;
            
            if([[commandWordsForSize lowercaseString] isEqualToString:@"pepperoni"]) {
                size = Large;
                toppings = @[@"mozzarella cheese", @"pepperoni", @"Parmesan cheese"];
            } else if ([[commandWordsForSize lowercaseString] isEqualToString:@"small"]) {
                size = Small;
            } else if ([[commandWordsForSize lowercaseString] isEqualToString:@"medium"]) {
                size = Medium;
            } else if ([[commandWordsForSize lowercaseString] isEqualToString:@"large"]) {
                size = Large;
            }
            
            // And then send some message to the kitchen...
            [restaurantKitchen makePizzaWithSize:size toppings:toppings];
        }
        
    }
    return 0;
}
