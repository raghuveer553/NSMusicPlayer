//
//  MPYoutubeViewController.m
//  NSMusicPlayer
//
//  Created by Naveen Raghuveer Madala on 07/09/14.
//  Copyright (c) 2014 MNRTech. All rights reserved.
//

#import "MPYoutubeViewController.h"

@interface MPYoutubeViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation MPYoutubeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"Youtube";
    self.webView.delegate = self;
   
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    NSURL* youtubeURL = [NSURL URLWithString:@"http://www.youtube.com"];
    NSURLRequest* the_request = [[NSURLRequest alloc] initWithURL:youtubeURL];
    [self.webView loadRequest:the_request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    
}


@end
