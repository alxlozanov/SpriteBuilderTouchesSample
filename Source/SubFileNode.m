//
//  SubFileNode.m
//  touchesSubFiles
//
//  Copyright 2015 Apportable. All rights reserved.
//

#import "SubFileNode.h"


@implementation SubFileNode {
    CCSprite *_S1;
    CCSprite *_S2;
    CCSprite *_S3;
    CGPoint _firstTouch;
}

- (id)init {
    self = [super init];
    if (self) {
    [_S1 setName:@"S1"];
    self.userInteractionEnabled = YES;
}
    
    return self;
}
- (void)didLoadFromCCB {
  

}

#pragma mark touches

-(void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {

    CCLOG(@"touch began on subfile");
    
    _firstTouch = [touch locationInNode:self];
    
    if ([_S1 hitTestWithWorldPos:_firstTouch]) {
        CCLOG(@"Touched 0");
        return;
    }
    
    if ([_S2 hitTestWithWorldPos:_firstTouch]) {
        CCLOG(@"Touched 0");
        return;
    }
    
    if ([_S3 hitTestWithWorldPos:_firstTouch]) {
        CCLOG(@"Touched 0");
        return;
    }
    
    // Oh I don't want my touch, here you go MainScene
    [super touchBegan:touch withEvent:event];
    
}

-(void)touchEnded:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
}





@end
