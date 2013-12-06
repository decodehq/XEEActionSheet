//
//  XEEActionSheet.h
//  XEEActionSheet
//
//  Created by Andrija Cajic on 06/12/13.
//  Copyright (c) 2013 XEE Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^BlockAction)(int buttonIndex);

/**
 Wrapper around UIActionSheet with simplified usage. It is especially useful when using multiple action sheets within one view or view controller.
 */
@interface XEEActionSheet : UIActionSheet <UIActionSheetDelegate>
{
    BlockAction _actionBlock;
}

/**
 Static initializer. Equivalent of UIActionSheet initializer.
 */
+(instancetype) actionSheetWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle destructiveButtonTitle:(NSString*)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;

/**
 @param *action* When user interacts with the XEEActionSheet, this block is executed with button index as an argument.
 */
-(void) handleAction:(BlockAction)action;


@end