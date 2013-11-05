//
//  ViewController.m
//  Bubbles
//
//  Created by Erika Martinez on 10/31/13.
//  Copyright (c) 2013 Erika Martinez. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Bubble.h"
#import "UIBubbleView.h"

@interface ViewController ()

@property (nonatomic, strong) UIDynamicAnimator *animator;

@end

@implementation ViewController

- (void)viewDidLoad

{
    [super viewDidLoad];
    
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView: self.view];
    
    UIGravityBehavior *gravityBehavior = [[UIGravityBehavior alloc] initWithItems: self.bubbleViews];
    
    [_animator addBehavior: gravityBehavior];
    
    UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc] initWithItems: self.bubbleViews];
    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    [_animator addBehavior: collisionBehavior];

    for (int i=0; i <5; i++) {
        CGFloat superviewWidth = self.view.frame.size.width;
        CGFloat xPos = superviewWidth/5*i;
        CGFloat yPos = 20;
        CGFloat width = superviewWidth/5;
        CGFloat height = superviewWidth/5;
        
        CGRect viewRect = CGRectMake (xPos, yPos, width, height);
        
        UIBubbleView *newView = [[UIBubbleView alloc]initWithColor: [UIColor redColor] andFrame: viewRect];
        newView.backgroundColor = [UIColor redColor];
        [self.view addSubview:newView];
        
        
        UIView *childView = [[UIView alloc]initWithFrame:
                            CGRectMake (0,0,20,20)];
        childView.backgroundColor = [UIColor whiteColor];
        [newView addSubview:childView];
        childView.center = newView.center;
        
        [UIView animateWithDuration: 1.0
                               delay: 3.0
                             options: 0
                          animations: ^{
                              
                              childView.backgroundColor =
                              [UIColor redColor];
                              newView.backgroundColor =
                              [UIColor yellowColor];
                          } completion: ^(BOOL finished) {
                          }];
         }
}

- (void)didReceiveMemoryWarning
{
            [super didReceiveMemoryWarning];
            // Dispose of any resources that can be recreated.
}

    
@end
