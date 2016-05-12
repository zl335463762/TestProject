//
//  FirstViewController.m
//  TestProject
//
//  Created by lang on 16/5/10.
//  Copyright © 2016年 lang. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController (){

    UITableView * _tableView;

}

@end

#define MAIN_SCREEN_WIDTH   ([UIScreen mainScreen].bounds.size.width)
#define MAIN_SCREEN_HEIGHT  ([UIScreen mainScreen].bounds.size.height)

@implementation FirstViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, MAIN_SCREEN_WIDTH, MAIN_SCREEN_HEIGHT) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    // Do any additional setup after loading the view.
}

- (NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (CGFloat )tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 280.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellIdstring = @"myCell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdstring];
    if (cell == nil) {
        NSArray *array = [[NSBundle mainBundle]loadNibNamed: @"MYTableViewCell" owner:self options:nil];
        cell = [array objectAtIndex:0];
    }
    
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
