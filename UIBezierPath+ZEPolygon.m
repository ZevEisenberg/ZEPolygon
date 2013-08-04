//
//  UIBezierPath+ZEPolygon.m
//  ZEPolygon
//
//  Created by Zev Eisenberg on 8/4/13.
//  Copyright (c) 2013 Zev Eisenberg. All rights reserved.
//

#import "UIBezierPath+ZEPolygon.h"

@implementation UIBezierPath (ZEPolygon)

+ (UIBezierPath *)bezierPathWithPolygonInRect:(CGRect)rect numberOfSides:(NSUInteger)numberOfSides
{
    if (numberOfSides < 3)
    {
        [NSException raise:NSInvalidArgumentException format:@"ZEPolygon requires numberOfSides to be 3 or greater"];
    }
    
    CGFloat xRadius = CGRectGetWidth(rect) / 2;
    CGFloat yRadius = CGRectGetHeight(rect) / 2;
    
    CGFloat centerX = CGRectGetMidX(rect);
    CGFloat centerY = CGRectGetMidY(rect);
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    
    [bezierPath moveToPoint:CGPointMake(centerX + xRadius, centerY + 0)];
    
    for (NSUInteger i = 0; i < numberOfSides; i++)
    {
        CGFloat theta = 2 * M_PI / numberOfSides * i;
        CGFloat xCoordinate = centerX + xRadius * cosf(theta);
        CGFloat yCoordinate = centerY + yRadius * sinf(theta);
        [bezierPath addLineToPoint:CGPointMake(xCoordinate, yCoordinate)];
    }
    
    [bezierPath closePath];
    
    return bezierPath;
}

@end
