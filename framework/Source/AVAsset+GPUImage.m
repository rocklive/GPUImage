//
//  AVAsset+GPUImage.m
//  Pods
//
//  Created by voronin on 5/18/15.
//
//

#import "AVAsset+GPUImage.h"
#import <objc/runtime.h>

static char *const kRLAssociatedAudioMixKey = "AssociatedAudioMix";

@implementation AVAsset (GPUImage)

- (void)setGpu_associatedAudioMix:(AVAudioMix *)rlsdk_associatedAudioMix {
    objc_setAssociatedObject(self, &kRLAssociatedAudioMixKey, rlsdk_associatedAudioMix, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (AVAudioMix *)gpu_associatedAudioMix {
    return objc_getAssociatedObject(self, &kRLAssociatedAudioMixKey) ;
}

@end
