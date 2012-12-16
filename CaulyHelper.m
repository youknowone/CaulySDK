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

void CaulyGlobalSet(NSString *appCode, UIViewController *parentViewController, UIView *view, id delegate) {
    CaulyAdSetting *setting = [CaulyAdSetting globalSetting];
    setting.appCode = appCode;
    setting.animType = CaulyAnimFadeOut;

    CaulyAdView *caulyView = [[CaulyAdView alloc] initWithParentViewController:parentViewController];
    [view addSubview:caulyView];
    caulyView.delegate = delegate;
    [caulyView startBannerAdRequest];
}