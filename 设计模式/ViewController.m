//
//  ViewController.m
//  设计模式
//
//  Created by 卢杰 on 2018/2/11.
//  Copyright © 2018年 卢杰. All rights reserved.
//

#import "ViewController.h"

#import "ShapeManager.h"
#import "Germ.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *tableView;

@property(nonatomic,strong)NSArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView = [[UITableView alloc]initWithFrame:self.view.bounds];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    _dataArray = @[@"外观设计模式",
                   @"原型设计模式"
                   ];
}
//数据源方法
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifie = @"Cell";
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:identifie];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifie];
    }
    cell.textLabel.text = _dataArray[indexPath.row];
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataArray.count;
}
//代理方法
- (CGFloat)tableView:(nonnull UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    return 44;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([@"外观设计模式" isEqualToString:_dataArray[indexPath.row]]) {
        [self facadePattern];
    } else if([@"原型设计模式" isEqualToString:_dataArray[indexPath.row]]){
        [self prototypePattern];
    }
}
- (void)facadePattern{
    ShapeManager *shapeManager = [[ShapeManager alloc]init];
    [shapeManager drawSquare];
    [shapeManager drawCircle];
}
-(void)prototypePattern{
    Germ *germ = [[Germ alloc]init];
    germ.name = @"类型1";
    Germ *germ2 = [germ copy];
    NSLog(@"germ:%@--germ1:%@",germ,germ2);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
