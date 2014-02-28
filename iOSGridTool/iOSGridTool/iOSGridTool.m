//
//  iOSGridTool.m
//
//  Created by Richard Plom on 2/28/14.
//  Copyright (c) 2014 Richard Plom. All rights reserved.
//
//
//  The MIT License (MIT)
//
//  Copyright (c) 2014 Richard Plom
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//  the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//  FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import "iOSGridTool.h"

@implementation iOSGridTool

+ (id)addGridToolToView:(UIView *)view
{
    NSString *imageFile = nil;
    // todo add iPad
    BOOL iPhoneSmallScreen = [UIScreen mainScreen].bounds.size.height < 568;
    if (iPhoneSmallScreen) {
        imageFile = @"iPhoneGridTool480.png";
    } else {
        imageFile = @"iPhoneGridTool568.png";
    }
    
    UIImage *image = [UIImage imageNamed: imageFile];
    UIView *gridView = [[self alloc] initWithImage:image];
    [view addSubview: gridView];
    return gridView;
}

- (void)hide
{
    self.hidden = YES;
}

- (void)show
{
    self.hidden = NO;
}

@end
