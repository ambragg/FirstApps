//
//  CameraViewController.m
//  
//
//  Created by Aimee Bragg on 6/3/15.
//
//

#import "CameraViewController.h"
#import "ViewController.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface CameraViewController () <UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@end

@implementation CameraViewController

{

    
       UIImagePickerController * ImagePickerController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ImagePickerController = [[UIImagePickerController alloc] init];
    ImagePickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
    ImagePickerController.delegate = self;
    ImagePickerController.showsCameraControls = NO;
    
    [self.view addSubview:ImagePickerController.view];
    
    int buttonSize = 80;
    
    UIButton * takeButton = [[UIButton alloc] initWithFrame:CGRectMake((SCREEN_WIDTH - buttonSize) / 2, SCREEN_HEIGHT - 40 - buttonSize, buttonSize, buttonSize)];
    
    takeButton.layer.cornerRadius = buttonSize / 2;
    takeButton.backgroundColor = [UIColor whiteColor];
    
    [takeButton addTarget:ImagePickerController action:@selector(takePicture) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:takeButton];
    
    UIButton * toggleCamera = [[UIButton alloc] initWithFrame:CGRectMake((SCREEN_WIDTH * 0.75) - 25, 0, 50, 50)];
    
    toggleCamera.center = CGPointMake(toggleCamera.center.x, takeButton.center.y);
                               
    toggleCamera.layer.cornerRadius = 25;
    toggleCamera.backgroundColor = [UIColor cyanColor];
                               
     [self.view addSubview:toggleCamera];
                               
    [toggleCamera addTarget:self action:@selector(toggleCamera) forControlEvents:UIControlEventTouchUpInside];
    
   
    
}

- (void)toggleCamera {
    
    
    if (ImagePickerController.cameraDevice == UIImagePickerControllerCameraDeviceFront) {
        
        ImagePickerController.cameraDevice = UIImagePickerControllerCameraDeviceRear;
        
    } else {
        
        ImagePickerController.cameraDevice = UIImagePickerControllerCameraDeviceFront;
    
    }
    
    
    
}


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage * original = info[UIImagePickerControllerOriginalImage];
    
    NSLog(@"%@", original);
    
    ViewController * imageVC = [self.storyboard instantiateViewControllerWithIdentifier:@"imageVC"];
    
    imageVC.original = original;
    
    
    
    [self.navigationController pushViewController:imageVC animated:YES];

    
    [picker dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
