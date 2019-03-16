//
//  FoodTrack.h
//  FoodTrack2
//
//  Created by 酒井綾菜 on 2019-03-13.
//  Copyright © 2019 Ayana Sakai. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FoodTruck;

@protocol FoodTruckDelegate <NSObject>

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end


@interface FoodTruck : NSObject

@property (nonatomic, weak) id<FoodTruckDelegate> delegate;

-(instancetype)initWithName:(NSString *)pun andFoodType:(NSString *)foodType;

-(void)serve:(int)orders;
-(void)cashOut;

@end
