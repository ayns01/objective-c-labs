//
//  main.m
//  Lab1-NSString
//
//  Created by 酒井綾菜 on 2019-02-25.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Uppercase.h"
#import "NSString+Lowercase.h"

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
                inputString = [inputString stringToUppercase];
                break;
            case 2:
                inputString = [inputString stringToLowercase];
                break;
                
            default:
                break;
        }
        
        // print NSString object
        NSLog(@"Input was: %@", inputString);
    }
    return 0;
}
