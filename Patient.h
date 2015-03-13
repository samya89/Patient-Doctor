//
//  Patient.h
//  Patient Doctor
//
//  Created by Samia Al Rahmani on 3/12/15.
//  Copyright (c) 2015 Samia Al Rahmani. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;


@interface Patient : NSObject


@property (nonatomic, strong) NSString *patientName;
@property (nonatomic, strong) NSNumber *patientAge;
@property (nonatomic, assign) BOOL healthCard;
@property (nonatomic, strong) NSString *disease;
@property (nonatomic, strong) NSMutableArray *prescriptionList;

- (void)patientIntro;

//- (BOOL)acceptPatient:(Doctor *)doctor;

- (instancetype)initWithName:(NSString *)name andAge:(NSNumber *)age andHealthCard:(BOOL)healthCard andDisease:(NSString *)disease;

@end
