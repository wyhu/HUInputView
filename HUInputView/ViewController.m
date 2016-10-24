//
//  ViewController.m
//  HUInputView
//
//  Created by huweiya on 16/10/24.
//  Copyright © 2016年 5i5j. All rights reserved.
//

#import "ViewController.h"
#import "HUNumInputView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITextField *textF = [[UITextField alloc] initWithFrame:CGRectMake(10, 220, 300, 50)];
    textF.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:textF];
    textF.inputView.backgroundColor = [UIColor redColor];
    textF.inputView = [[HUNumInputView alloc] initIsRandom:NO mainView:textF];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
