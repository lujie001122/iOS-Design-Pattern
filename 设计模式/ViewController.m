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
#import "CarFactory.h"
#import "AbstractFactory.h"
#import "ColorFactory.h"
#import "MealBuilder.h"
#import "Meal.h"
#import "AudioPlayer.h"

#import "CircleSuper.h"
#import "RedCircle.h"
#import "GreenCircle.h"
#import "ShapeAbstract.h"
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
                   @"原型设计模式",
                   @"工厂模式",
                   @"抽象工厂模式",
                   @"建造者模式",
                   @"适配器模式",
                   @"桥接模式"
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
    }else if ([@"工厂模式" isEqualToString:_dataArray[indexPath.row]]){
        [self factoryPattern];
    }else if ([@"抽象工厂模式" isEqualToString:_dataArray[indexPath.row]]){
        [self AbstractFactoryPattern];
    }else if ([@"建造者模式" isEqualToString:_dataArray[indexPath.row]]){
        [self BuilderPattern];
    }else if ([@"适配器模式" isEqualToString:_dataArray[indexPath.row]]){
        [self AdapterPattern];
    }else if ([@"桥接模式" isEqualToString:_dataArray[indexPath.row]]){
        [self BridgePattern];
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
    germ.object = [NSObject new];
    Germ *germ2 = [germ copy];
    NSLog(@"germ:%@--germ1:%@  object1:%@---object2%@",germ,germ2,germ.object,germ2.object);
}
-(void)factoryPattern{
    CarFactory *carFactory = [CarFactory new];
    NSObject *suv = [carFactory carRunWithType:1];
    [suv performSelector:@selector(run)];
    
    NSObject *bus = [carFactory carRunWithType:2];
    [bus performSelector:@selector(run)];
}
-(void)AbstractFactoryPattern{
    CarFactory *carFactory = (CarFactory *)[AbstractFactory getFactoryWithType:1];
    NSObject *suv = [carFactory carRunWithType:1];
    [suv performSelector:@selector(run)];
    
    NSObject *bus = [carFactory carRunWithType:2];
    [bus performSelector:@selector(run)];
    
    //创建Color Factory
    ColorFactory *colorFactory = (ColorFactory *)[AbstractFactory getFactoryWithType:2];
    NSObject *red = [colorFactory colorFillWithType:1];
    [red performSelector:@selector(fill)];
    
    NSObject *blue = [colorFactory colorFillWithType:2];
    [blue performSelector:@selector(fill)];
}
-(void)BuilderPattern{
    MealBuilder* mealBuilder = [MealBuilder new];
    Meal *velMeal = [mealBuilder prepareVegMeal];
    NSLog(@"VegMeal");
    [velMeal showItems];
    NSLog(@"Total Cost:%f",[velMeal getCost]);
    
    Meal *nonVegMeal = [mealBuilder prepareNonVegMeal];
    NSLog(@"nonVegMeal");
    [nonVegMeal showItems];
    NSLog(@"Total Cost:%f",[nonVegMeal getCost]);
}
-(void)AdapterPattern{
    [AudioPlayer playWithName:@"beyond the horizon.mp3" andType:@"mp3"];
    [AudioPlayer playWithName:@"alone.mp4" andType:@"mp4"];
    [AudioPlayer playWithName:@"far far away.vlc" andType:@"vlc"];
    [AudioPlayer playWithName:@"mind me.avi" andType:@"avi"];
}
-(void)BridgePattern{
    ShapeAbstract *shape= [[CircleSuper alloc]init];
    shape.drawApi = [[GreenCircle alloc]init];
    [shape drawCircleWithRadius:10 pointX:1 pointY:1];
    
    shape.drawApi = [[RedCircle alloc]init];
    [shape drawCircleWithRadius:66 pointX:100 pointY:88];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
