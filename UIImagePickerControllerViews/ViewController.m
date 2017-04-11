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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)buttonToGetImage:(id)sender
{
    UIImagePickerController *imageController = [[UIImagePickerController alloc]init];
    imageController.delegate = self;
    imageController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    //this will look into the camera source but because the simulator doesnt have one, do not use it.
    //imageController.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    //present the "library"
    [self presentViewController:imageController animated:YES completion:nil];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    self.imageView.image = image;
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
