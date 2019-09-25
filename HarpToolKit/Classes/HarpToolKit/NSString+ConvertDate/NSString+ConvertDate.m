//
//  NSString+ConvertDate.m
//  JiuTouZhu
//
//  Created by three stone 王 on 2018/7/22.
//  Copyright © 2018年 three stone 王. All rights reserved.
//

#import "NSString+ConvertDate.h"

@implementation NSString (ConvertDate)

- (NSString *)convertToDate {
    
    NSTimeInterval interval    = [self doubleValue];
    
    NSDate *date               = [NSDate dateWithTimeIntervalSince1970:interval];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateFormat:@"MM.dd HH:mm"];
    
    NSString *dateString       = [formatter stringFromDate: date];
    
    return dateString;
}
@end
