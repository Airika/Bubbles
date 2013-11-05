//
//  UIBubbleView.m
//  Bubbles
//
//  Created by Erika Martinez on 11/4/13.
//  Copyright (c) 2013 Erika Martinez. All rights reserved.
//

#import "UIBubbleView.h"

@implementation UIBubbleView

- (instancetype) initWithColor:(UIColor*)color andFrame:(CGRect)frame {
    self = [super initWithFrame: frame];
    self.backgroundColor = color;
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
