//
//  CaulyHelper.m
//  CaulySDK
//
//  Created by Jeong YunWon on 12. 12. 16..
//
//

#import "CaulyHelper.h"

#import "CaulyAdView.h"
#import "CaulyAdSetting.h"

void CaulyQuickSet(NSString *appCode, UIViewController *parentViewController, UIView *parentView, id delegate) {
    CaulyAdSetting *setting = [CaulyAdSetting globalSetting];
    setting.appCode = appCode;
    setting.animType = CaulyAnimFadeOut;

    CaulyAdView *caulyView = [[CaulyAdView alloc] initWithParentViewController:parentViewController];
    [parentView addSubview:caulyView];
    caulyView.delegate = delegate;
    [caulyView startBannerAdRequest];
}