//
//  CoordinatingController.h
//  TouchPainter
//
//  Created by Franky on 2018/12/29.
//  Copyright © 2018 Franky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CanvasViewController.h"
#import "PaletteViewController.h"
#import "ThumbnailViewController.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ButtonTag) {
    kButtonTagDone,
    kButtonTagOpenPaletteView,
    kButtonTagOpenThumbnailView,
};

@interface CoordinatingController : NSObject
@property (nonatomic, readonly) UIViewController *activeViewController;
@property (nonatomic, readonly) CanvasViewController *canvasViewController;

+ (CoordinatingController *)shareInstance;

- (IBAction)requestViewChangeByObject:(id)sender;
@end

NS_ASSUME_NONNULL_END
