//
//  AVAsset+GPUImage.h
//  Pods
//
//  Created by voronin on 5/18/15.
//
//

#import <AVFoundation/AVFoundation.h>

@interface AVAsset (GPUImage)

@property (strong, nonatomic) AVAudioMix *gpu_associatedAudioMix;

@end
