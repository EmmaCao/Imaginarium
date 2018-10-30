//
//  ViewController.m
//  Imaginarium
//
//  Created by xhand on 2018/10/30.
//  Copyright © 2018年 EmmaCao. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[ImageViewController class]]) {
        ImageViewController *ivc = (ImageViewController *)segue.destinationViewController;
        ivc.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"https://www.baidu.com/img/%@.png", segue.identifier]];
        ivc.title = segue.identifier;
    }
}

@end
