XEEActionSheet
==============

XEEActionSheet is a wrapper around UIActionSheet with simplified usage. It is especially useful when using multiple action sheets within one view or view controller.


```objc

XEEActionSheet* actionSheet = [XEEActionSheet actionSheetWithTitle:@"Choose now" message:@"Read your options carefully..." cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Destroy" otherButtonTitles:@"Process", @"Switch", nil];
[actionSheet handleAction:^(int buttonIndex) {
    NSLog(@"Option chosen %d", buttonIndex);
}];
[actionSheet showInView:self.view];

```
