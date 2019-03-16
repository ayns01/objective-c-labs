//
//  MyGreeterController.h
//  FoodTruck
//
//  Created by 酒井綾菜 on 2019-03-13.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GreeterDelegate <NSObject>

- (BOOL)shouldSayHello;

@end

@interface Greeter : NSObject

@property (nonatomic, weak) id<GreeterDelegate> delegate;

- (void)conversation;

@end

NS_ASSUME_NONNULL_END
