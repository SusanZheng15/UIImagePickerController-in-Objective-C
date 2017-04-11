//
//  ViewController.h
//  UIImagePickerControllerViews
//
//  Created by Susan Zheng on 6/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UINavigationControllerDelegate,UIImagePickerControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)buttonToGetImage:(id)sender;

@end

