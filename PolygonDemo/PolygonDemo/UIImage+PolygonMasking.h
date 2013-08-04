//
//  UIImage+HexagonMasking.h
//  PolygonDemo
//
//  Created by Zev Eisenberg on 8/4/13.
//  Copyright (c) 2013 Zev Eisenberg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (PolygonMasking)

- (UIImage *)imageMaskedWithPolygonWithNumberOfSides:(NSUInteger)numberOfSides;

@end
