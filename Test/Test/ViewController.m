//
//  ViewController.m
//  Test
//
//  Created by Franky on 2018/7/25.
//  Copyright © 2018年 Franky. All rights reserved.
//

#import "ViewController.h"
#import "WebView.h"
#import "TableView.h"

@interface ViewController () <UITableViewDataSource,UIScrollViewDelegate>{
    CGFloat _lastWebViewContentHeight;
    CGFloat _lastTableViewContentHeight;
}
@property (nonatomic, strong) WebView *webView;
@property (nonatomic, strong) TableView *tableView;
@property (nonatomic, strong) UIScrollView *scrollView;
@end

@implementation ViewController

//@dynamic _scrollView;
@synthesize scrollView = _scrollView;

- (void)setScrollView:(UIScrollView *)scrollView{

}
- (UIScrollView *)scrollView{
    if (_scrollView == nil) {
        _scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
        _scrollView.backgroundColor = [UIColor redColor];
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.delegate = self;
        if (@available(iOS 11, *)) {
            _scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }else{
            self.automaticallyAdjustsScrollViewInsets = NO;
        }
    }
    return _scrollView;
}

- (UITableView *)tableView{
    if (_tableView == nil) {
        _tableView = [[TableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.backgroundColor = [UIColor cyanColor];
        _tableView.scrollEnabled = NO;
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.showsHorizontalScrollIndicator = NO;
        
    }
    return _tableView;
}

- (WKWebView *)webView{
    if (_webView == nil) {
        WKWebViewConfiguration *conf = [[WKWebViewConfiguration alloc] init];
        _webView = [[WebView alloc] initWithFrame:CGRectZero configuration:conf];
        _webView.scrollView.scrollEnabled = NO;
        _webView.scrollView.showsHorizontalScrollIndicator = NO;
        _webView.scrollView.showsVerticalScrollIndicator = NO;
        if (@available(iOS 11, *)) {
            _webView.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }else{
            self.automaticallyAdjustsScrollViewInsets = NO;
        }

        NSURL *url = [NSURL URLWithString:@"https://www.jianshu.com/p/3721d736cf68"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [_webView loadRequest:req];
    }
    return _webView;
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    for (UIView *v in _webView.subviews) {
        v.backgroundColor = [UIColor greenColor];
        if (v.subviews.count > 0) {
            for (UIView *sv in v.subviews) {
                sv.backgroundColor = [UIColor greenColor];
                sv.tintColor = [UIColor greenColor];
            }
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.scrollView];
    [self.scrollView addSubview:self.webView];
    [self.scrollView addSubview:self.tableView];
    
//    [self.webView addObserver:self forKeyPath:@"scrollView.contentSize" options:NSKeyValueObservingOptionNew context:nil];
//    [self.tableView addObserver:self forKeyPath:@"contentSize" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)dealloc{
    [self.webView removeObserver:self forKeyPath:@"scrollView.contentSize" context:nil];
    [self.tableView removeObserver:self forKeyPath:@"contentSize" context:nil];
}

//- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
//    if (object == _webView) {
//        if ([keyPath isEqualToString:@"scrollView.contentSize"]) {
//            NSValue *value = change[NSKeyValueChangeNewKey];
//            if (_lastWebViewContentHeight == [value CGSizeValue].height) {
//                return;
//            }
//            _lastWebViewContentHeight = [value CGSizeValue].height;
//
//            // 设置 webView 的 高度
//            CGSize contentSize = [value CGSizeValue];
////            CGFloat width = self.scrollView.bounds.size.width;
//            CGFloat height = contentSize.height < self.scrollView.bounds.size.height ? contentSize.height : self.scrollView.bounds.size.height;
////            CGFloat x = self.webView.frame.origin.x;
////            CGFloat y = self.webView.frame.origin.y;
////            self.webView.frame = CGRectMake(x, y, width, height);
//            CGRect rect = self.webView.frame;
//            rect.size.height = height;
//            self.webView.frame = rect;
//            NSLog(@"%@",NSStringFromCGRect(rect));
//
//            // 设置 tableView 的 y值
//            rect = self.tableView.frame;
//            rect.origin.y = CGRectGetMaxY(self.webView.frame);
//            self.tableView.frame = rect;
//
//            // 设置 scrollView 的 contentSize
//            self.scrollView.contentSize = CGSizeMake(self.scrollView.bounds.size.width, self.webView.scrollView.contentSize.height + self.tableView.contentSize.height);
//        }
//    }else if (object == _tableView) {
//        if ([keyPath isEqualToString:@"contentSize"]) {
//            NSValue *value = change[NSKeyValueChangeNewKey];
//            if (_lastTableViewContentHeight == [value CGSizeValue].height) {
//                return;
//            }
//            _lastTableViewContentHeight = [value CGSizeValue].height;
//
//            // 设置 tableView 的 高度
//            CGSize contentSize = [value CGSizeValue];
////            CGFloat width = self.scrollView.bounds.size.width;
//            CGFloat height = contentSize.height < self.scrollView.bounds.size.height ? contentSize.height : self.scrollView.bounds.size.height;
////            CGFloat y = CGRectGetMaxY(self.webView.frame);
////            self.tableView.frame = CGRectMake(0, y, width, height);
//
//            CGRect rect = self.tableView.frame;
//            rect.size.height = height;
//            rect.origin.y = CGRectGetMaxY(self.webView.frame);
//            self.tableView.frame = rect;
//
//            // 设置 webView 的 高度
//
//
//            // 设置 scrollView 的 contentSize
//            self.scrollView.contentSize = CGSizeMake(self.scrollView.bounds.size.width, self.webView.scrollView.contentSize.height + self.tableView.contentSize.height);
//        }
//    }
//}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
    self.webView.frame = CGRectMake(0, 0, self.view.bounds.size.width, 1000);
    self.tableView.frame = CGRectMake(0, CGRectGetMaxY(self.webView.frame), self.view.bounds.size.width, 1000);
    self.scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, self.webView.bounds.size.height + self.tableView.bounds.size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%zd",indexPath.row];
    return cell;
}

#pragma mark -
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat offsetY = scrollView.contentOffset.y;

    CGFloat webViewHeight = self.webView.bounds.size.height;
    CGFloat tableViewHeight = self.tableView.bounds.size.height;

    CGFloat webViewContentHeight = self.webView.scrollView.contentSize.height;
    CGFloat tableViewContentHeight = self.tableView.contentSize.height;

//    if (offsetY < 0) {
//        NSLog(@"offset < 0");
//
//    }else if (offsetY < webViewContentHeight - webViewHeight) {
//        NSLog(@"offsetY < webViewContentHeight - webViewHeight");
//
//    }else if (1) {
//        NSLog(@"else");
//    }
}

@end
