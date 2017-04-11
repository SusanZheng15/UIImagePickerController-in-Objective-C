//
//  ViewController.m
//  UIImagePickerControllerViews
//
//  Created by Susan Zheng on 6/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (IBAction)buttonToGetImage:(id)sender
{
    //getting a image controller
    UIImagePickerController *imageController = [[UIImagePickerController alloc]init];
    
    //calls the delegate method from UIImagepicker on the view controller
    imageController.delegate = self;
    
    //source of the photo from the user's photo library, can also be from camera but has to call for camera
    imageController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    
    //present the photo library
    [self presentViewController:imageController animated:YES completion:nil];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    //initialize image from photo library
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    //image view will be the image the user picks from library
    self.imageView.image = image;
    
    //dismisses the photo library
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
