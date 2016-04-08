//
//  NSString+StringHelper.m
//  Scentre
//
//  Created by MacBook Pro on 31/03/16.
//  Copyright © 2016 Fxbytes. All rights reserved.
//

#import "NSString+StringHelper.h"

@implementation NSString (StringHelper)

- (NSString *)htmlEscapeEncoding
{
    NSString *temp = self;
    temp = [temp stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"];
    temp = [temp stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"];
    temp = [temp stringByReplacingOccurrencesOfString:@"'"  withString:@"&#x27;"];
    temp = [temp stringByReplacingOccurrencesOfString:@">"  withString:@"&gt;"];
    temp = [temp stringByReplacingOccurrencesOfString:@"<"  withString:@"&lt;"];
    
    return temp;
}

- (NSString *)htmlEscapeDecoding
{
    [self stringByReplacingOccurrencesOfString:@"&amp;"  withString:@"&"];
    [self stringByReplacingOccurrencesOfString:@"&quot;" withString:@"\""];
    [self stringByReplacingOccurrencesOfString:@"&#x27;" withString:@"'"];
    [self stringByReplacingOccurrencesOfString:@"&#x39;" withString:@"'"];
    [self stringByReplacingOccurrencesOfString:@"&#x92;" withString:@"'"];
    [self stringByReplacingOccurrencesOfString:@"&#x96;" withString:@"'"];
    [self stringByReplacingOccurrencesOfString:@"&gt;"   withString:@">"];
    [self stringByReplacingOccurrencesOfString:@"&lt;"   withString:@"<"];
    
    return self;
}

@end
