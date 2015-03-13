//
//  Patient.m
//  Patient Doctor
//
//  Created by Samia Al Rahmani on 3/12/15.
//  Copyright (c) 2015 Samia Al Rahmani. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (void)patientIntro{
    NSLog(@"My name is %@ and I'm %@ years old.", self.patientName, self.patientAge);
}


- (instancetype)initWithName:(NSString *)name andAge:(NSNumber *)age andHealthCard:(BOOL)healthCard andDisease:(NSString *)disease
{
    self = [super init];
    if (self) {
        self.patientName=name;
        self.patientAge=age;
        self.healthCard=healthCard;
        self.disease=disease;
        self.prescriptionList = [NSMutableArray array];
    }
    return self;
}


@end