#import "MainScene.h"
#import "SubFileNode.h"

@implementation MainScene{
    CCButton *_B1;
    CCButton *_B2;
    SubFileNode *_subfile;
}

- (void)didLoadFromCCB {
    self.userInteractionEnabled = YES;
}

#pragma mark button selectors


-(void)onB1Touched {
    
    CCLOG(@"B1 Touched");
}

-(void)onB2Touched {
    
    CCLOG(@"B2 Touched");
}



#pragma mark touches

-(void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
 
    CCLOG(@"touch began on mainscene");
 
//    CCSprite *s = (CCSprite*)[_subfile getChildByName:@"S1" recursively:YES];
//    if ([[_subfile getChildByName:@"S1" recursively:NO] hitTestWithWorldPos:[touch locationInNode:[_subfile getChildByName:@"S1" recursively:NO]]]) {
//        CCLOG(@"Touched 0");
//    }

}

-(void)touchEnded:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
}

@end
