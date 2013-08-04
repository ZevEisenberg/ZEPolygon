//
//  UIBezierPath+ZEPolygon.h
//  ZEPolygon
//
//  Created by Zev Eisenberg on 8/4/13.
//  Copyright (c) 2013 Zev Eisenberg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBezierPath (ZEPolygon)

+ (UIBezierPath *)bezierPathWithPolygonInRect:(CGRect)rect numberOfSides:(NSUInteger)numberOfSides;

@end
