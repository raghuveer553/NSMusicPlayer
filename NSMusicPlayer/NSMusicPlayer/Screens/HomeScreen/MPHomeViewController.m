//
//  MPHomeViewController.m
//  NSMusicPlayer
//
//  Created by Naveen Raghuveer Madala on 06/09/14.
//  Copyright (c) 2014 MNRTech. All rights reserved.
//

#import "MPHomeViewController.h"
#import "MPYoutubeViewController.h"
#import <AVFoundation/AVAudioPlayer.h>

@interface MPHomeViewController ()

@property (nonatomic,strong) NSString* songPath;
@property (nonatomic,strong) AVAudioPlayer* audioPlayer;

@end

@implementation MPHomeViewController

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
    
    self.title = @"NSMusicPlayer";
    
    self.songPath = [[NSBundle mainBundle] pathForResource:@"manam"
                                                    ofType:@"mp3"];
    NSURL* audioFileURL = [NSURL fileURLWithPath:self.songPath];
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioFileURL error:nil];
    [self.audioPlayer setCurrentTime:0];
    [self.audioPlayer prepareToPlay];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)playMusicButtonAction:(id)sender
{
    UIButton* playButton = (UIButton*)sender;
    if(playButton.isSelected == NO) // Not playing music
    {
        [self.audioPlayer play];
    }
    else // Already playing music
    {
        [self.audioPlayer stop];
    }
    
    playButton.selected = !playButton.isSelected;
}

- (IBAction)youtubeButtonAction:(id)sender
{
    MPYoutubeViewController* youtubeVC = [[MPYoutubeViewController alloc] init];
    [self.navigationController pushViewController:youtubeVC animated:YES];
}

@end
