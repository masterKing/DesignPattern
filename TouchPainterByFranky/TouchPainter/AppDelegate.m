//
//  AppDelegate.m
//  TouchPainter
//
//  Created by Franky on 2018/12/28.
//  Copyright © 2018 Franky. All rights reserved.
//

#import "AppDelegate.h"
#import "ClothCanvasViewGenerator.h"
#import "PaperCanvasViewGenerator.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    CoordinatingController *coordinatingController = [CoordinatingController shareInstance];
    self.window.rootViewController = [coordinatingController activeViewController];
    [self.window makeKeyAndVisible];
    
    CGFloat width = 50;
    CGFloat height = 50;
    CGFloat x = (UIScreen.mainScreen.bounds.size.width - width) * 0.5;
    CGFloat y = 100;
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(x, y, width, height)];
    button.backgroundColor = [UIColor yellowColor];
    [button addTarget:self action:@selector(didClickButton) forControlEvents:UIControlEventTouchUpInside];
    //[[[UIApplication sharedApplication] keyWindow] addSubview:button];

    
    
    return YES;
}

- (void)didClickButton{
    CoordinatingController *coordinatingController = [CoordinatingController shareInstance];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"你想要换什么样的画布" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *one = [UIAlertAction actionWithTitle:@"纸张画布" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
        PaperCanvasViewGenerator *generator = [[PaperCanvasViewGenerator alloc] init];
        [coordinatingController.canvasViewController loadCanvasViewWithGenerator:generator];
    }];
    [alertController addAction:one];
    
    UIAlertAction *two = [UIAlertAction actionWithTitle:@"布视图" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
        ClothCanvasViewGenerator *generator = [[ClothCanvasViewGenerator alloc] init];
        [coordinatingController.canvasViewController loadCanvasViewWithGenerator:generator];
    }];
    [alertController addAction:two];
    
    [coordinatingController.activeViewController presentViewController:alertController animated:YES completion:nil];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
