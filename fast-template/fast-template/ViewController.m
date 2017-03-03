//
//  ViewController.m
//  fast-template
//
//  Created by yunfenghan Ling on 7/8/16.
//  Copyright © 2016 lingyfh. All rights reserved.
//

#import "ViewController.h"
#import "ListViewController.h"

@interface ViewController ()
{
    ListViewController *listCtrl;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 将ringCtril add到viewcontroller上
    listCtrl = [[self storyboard] instantiateViewControllerWithIdentifier:NSStringFromClass([ListViewController class])];
    [self addChildViewController:listCtrl];
    listCtrl.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:listCtrl.view];
    [listCtrl didMoveToParentViewController:self];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
