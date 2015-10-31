//
//  ViewControllerA.m
//  testSDWebImage
//
//  Created by 陈金 on 15/10/31.
//  Copyright © 2015年 Art. All rights reserved.
//

#import "ViewControllerA.h"
#import "testTableViewCell.h"
#import "UIImageView+WebCache.h"

@interface ViewControllerA ()

@property (weak, nonatomic) IBOutlet UITableView *tableview;

@property (strong, nonatomic) NSString* imageUrl;

@end

@implementation ViewControllerA

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imageUrl = @"http://7xlznu.com2.z0.glb.qiniucdn.com/5632c8d9fa59312877bf7fdc.jpg?imageMogr2/thumbnail/";
//    self.imageUrl = @"http://7xlznu.com2.z0.glb.qiniucdn.com/5632c949fa59312877bf8065.jpg?imageMogr2/thumbnail/!543x434r/gravity/center/crop/";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 250;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    testTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"testTableViewCell" forIndexPath:indexPath];
    
    
    NSString* stringUrl = [NSString stringWithFormat:@"%@%@",self.imageUrl,[NSString stringWithFormat:@"%dx%d",(indexPath.row+1)*9,(indexPath.row+1)*10]];
    [cell.testImageview sd_setImageWithURL:[NSURL URLWithString:stringUrl]];
    
    return cell;
}


@end
