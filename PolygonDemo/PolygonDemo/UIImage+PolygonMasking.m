//
//  UIImage+HexagonMasking.m
//  PolygonDemo
//
//  Created by Zev Eisenberg on 8/4/13.
//  Copyright (c) 2013 Zev Eisenberg. All rights reserved.
//

#import "UIImage+PolygonMasking.h"
#import "UIBezierPath+ZEPolygon.h"

@implementation UIImage (PolygonMasking)

- (UIImage *)imageMaskedWithPolygonWithNumberOfSides:(NSUInteger)numberOfSides
{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIBezierPath *path = [UIBezierPath bezierPathWithPolygonInRect:CGRectMake(0, 0, self.size.width, self.size.height) numberOfSides:numberOfSides];
    CGContextSaveGState(ctx);
    [path addClip];
    [self drawAtPoint:CGPointMake(0, 0)];
    CGContextRestoreGState(ctx);
    
    UIImage *retImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return retImage;
}

@end
