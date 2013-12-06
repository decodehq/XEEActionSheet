![Alt text](/images/xee_01.png)

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


Contact
================

Follow XEETech on Twitter (<a href="https://twitter.com/XEE_Tech">XEE Tech</a>).

Connect with us on LinkedIn (<a href="http://www.linkedin.com/company/xee-tech">@XEE_Tech</a>).


License
================
XEEPluralizer is available under the MIT license. See the LICENSE file for more info.
