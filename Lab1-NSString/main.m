//
//  main.m
//  Lab1-NSString
//
//  Created by 酒井綾菜 on 2019-02-25.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "NSString+Uppercase.h"
//#import "NSString+Lowercase.h"
//#import "Numberize.h"

Boolean isQuestionMark(NSString *inputstring) {
    NSUInteger lastCharIndex = [inputstring length] - 1;
    char lastChar = [inputstring characterAtIndex:lastCharIndex];
    return (lastChar == '?');
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 255 unit long array of characters
        char inputChars[255];
        printf("Input a string: ");
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        // print as a c string
        printf("Your string is %s\n", inputChars);
        // convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        char inputCharsForOperation[6];
        int intputOperationNumber;
        printf("Input an operation number:\n");
        printf("1 - Uppercase\n2 - Lowercase\n3 - Numberize\n4 - Canadianize\n5 - Respond\n6 - De-Space-It\n");
        fgets(inputCharsForOperation, 5, stdin);
        intputOperationNumber = atoi(inputCharsForOperation);
        printf("number is %d\n", intputOperationNumber);
        
        switch (intputOperationNumber) {
            case 1:
                inputString = [inputString uppercaseString];
                NSLog(@"Uppercase is: %@", inputString);
                break;
            case 2:
                inputString = [inputString lowercaseString];
                NSLog(@"Lowercase is: %@", inputString);
                break;
            case 3:
                // TO DO
                NSLog(@"Have to implement");
                NSLog(@"Input was: %@", inputString);
                break;
            case 4:
                inputString = [inputString stringByAppendingString:@", eh?"];
                NSLog(@"Canadianize is: %@", inputString);
                break;
            case 5:
                // TO DO
                NSLog(@"Have to implement");
                NSLog(@"Input was: %@", inputString);
                break;
            case 6:
                inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"DeSpaceIt is: %@", inputString);
                break;
                
            default:
                break;
        }
    }
    return 0;
}
