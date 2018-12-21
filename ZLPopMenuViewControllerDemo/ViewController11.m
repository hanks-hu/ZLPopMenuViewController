//
//  ViewController11.m
//  ZLPopMenuViewControllerDemo
//
//  Created by 胡智林 on 2018/12/18.
//  Copyright © 2018 胡智林. All rights reserved.
//

#import "ViewController11.h"

@interface ViewController11 ()

@end

@implementation ViewController11

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [[ZLPopMenuConfig alloc] ini];
    UIView *testView = [[UIView alloc]init];
    testView.backgroundColor = [UIColor redColor];
    testView.frame = CGRectMake(100, 130, 50, 50);
    [self.view addSubview:testView];
    self.view.backgroundColor = [UIColor yellowColor];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        ZLPopMenuModel *model = [[ZLPopMenuModel alloc]initWithItemName:@"菜单" imageName:nil];
        
        ZLPopMenuViewController *popVC = [[ZLPopMenuViewController alloc] initWithSourceView:testView
                                                                                    menuData:@[model, model, model] menuStyle:ZLPopMenuStyleWhite popMenuConfig:[ZLPopMenuConfig default]];
        [self presentViewController:popVC animated:true completion:nil];
        
        [popVC setDidClickItems:^(NSInteger indx, ZLPopMenuModel * _Nonnull model) {
            NSLog(@"OC中点击了 %ld, %@", indx, model);
        }];
        
        
        
    });
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
