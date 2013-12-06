//
//  XEEActionSheet.m
//  XEEActionSheet
//
//  Created by Andrija Cajic on 06/12/13.
//  Copyright (c) 2013 XEE Tech. All rights reserved.
//

#import "XEEActionSheet.h"

@implementation XEEActionSheet


+(instancetype) actionSheetWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ...
{
    XEEActionSheet* actionSheet = [[self alloc] initWithTitle:title delegate:Nil cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:nil];
    
    if (actionSheet) {
        va_list ap;
        va_start(ap, otherButtonTitles);
        
        while (otherButtonTitles != nil) {
            [actionSheet addButtonWithTitle:otherButtonTitles];
            otherButtonTitles = va_arg(ap, NSString *);
        }
        
        va_end(ap);
    }
    
    return actionSheet;
}


-(instancetype) initWithTitle:(NSString *)title delegate:(id<UIActionSheetDelegate>)delegate cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ...
{
    if (self = [super initWithTitle:title delegate:delegate cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:nil]) {
        va_list ap;
        va_start(ap, otherButtonTitles);
        
        while (otherButtonTitles != nil) {
            [self addButtonWithTitle:otherButtonTitles];
            otherButtonTitles = va_arg(ap, NSString *);
        }
        
        va_end(ap);
        
        self.delegate = self;
    }
    return self;
}

-(void) handleAction:(BlockAction)action
{
    _actionBlock = action;
}


-(void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (_actionBlock) _actionBlock(buttonIndex);
}

@end