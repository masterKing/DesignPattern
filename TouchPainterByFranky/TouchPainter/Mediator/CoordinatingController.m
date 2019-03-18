//
//  CoordinatingController.m
//  TouchPainter
//
//  Created by Franky on 2018/12/29.
//  Copyright © 2018 Franky. All rights reserved.
//

#import "CoordinatingController.h"

@interface CoordinatingController () <NSCopying>

@end

@implementation CoordinatingController

static CoordinatingController *sharedCoordinator = nil;

- (void)initialize{
    _canvasViewController = [[CanvasViewController alloc] init];
    _activeViewController = _canvasViewController;
}

#pragma mark -
#pragma mark CoordinatingController Singleton Implementation
+ (CoordinatingController *)shareInstance{
    if (sharedCoordinator == nil) {
        sharedCoordinator = [[super allocWithZone:NULL] init];
        
        [sharedCoordinator initialize];
    }
    return sharedCoordinator;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    return [self shareInstance];
}

- (id)copyWithZone:(NSZone *)zone{
    return self;
}

#pragma mark -
#pragma mark A method for view transitions

- (IBAction)requestViewChangeByObject:(id)sender{
    if ([sender isKindOfClass:[UIBarButtonItem class]]) {
        switch ([(UIBarButtonItem *)sender tag]) {
            case kButtonTagOpenPaletteView:
            {
                PaletteViewController *controller = [[PaletteViewController alloc] init];
                [_canvasViewController presentViewController:controller animated:YES completion:nil];
                _activeViewController = controller;
            }
                break;
                
            case kButtonTagOpenThumbnailView:
            {
                ThumbnailViewController *controller = [[ThumbnailViewController alloc] init];
                [_canvasViewController presentViewController:controller animated:YES completion:nil];
                _activeViewController = controller;
                
            }
                break;
            default:
            {
                [_canvasViewController dismissViewControllerAnimated:YES completion:nil];
                
                _activeViewController = _canvasViewController;
            }
                break;
        }
    }
    // every thing else goes to the main canvasViewController
    else
    {
        [_canvasViewController dismissModalViewControllerAnimated:YES];
        
        // set the activeViewController back to
        // canvasViewController
        _activeViewController = _canvasViewController;
    }

}

@end
