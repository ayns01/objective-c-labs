//
//  NSString+Piglatin.m
//  Lab13
//
//  Created by 酒井綾菜 on 2019-02-22.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import "NSString+Piglatin.h"

@implementation NSString (PigLatin)
- (NSString *) stringByPigLatinization {
    NSString *piglatinwords = @"";
    NSCharacterSet *consonants = [NSCharacterSet characterSetWithCharactersInString:@"AEIOUaeiou"];
    NSMutableArray *consonantChunks = [[self componentsSeparatedByCharactersInSet:consonants] mutableCopy];
    NSString *firstChunk = [consonantChunks objectAtIndex:0];
    NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:[self length]];
    for (int i=0; i < [self length]; i++)
    {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [self characterAtIndex:i]];
        [characters addObject:ichar];
    }
    NSRange range = NSMakeRange(0, [firstChunk length]);
    [characters removeObjectsInRange:range];
    [characters addObject:firstChunk];
    [characters addObject:@"ay"];
    piglatinwords = [characters componentsJoinedByString:@""];
    piglatinwords = [NSString stringWithFormat:@"%@%@",[[piglatinwords substringToIndex:1] uppercaseString],[piglatinwords substringFromIndex:1]];
   
    return piglatinwords;
}
@end
