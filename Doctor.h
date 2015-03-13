//
//  Doctor.h
//  Patient Doctor
//
//  Created by Samia Al Rahmani on 3/12/15.
//  Copyright (c) 2015 Samia Al Rahmani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *doctorName;
@property (nonatomic, strong) NSString *doctorSpn;
@property (nonatomic, strong) NSMutableArray *patientList;
@property (nonatomic, strong) NSDictionary *symptoms;


- (void)doctorIntro;

- (void)requestMedication:(Patient *)patient;

- (instancetype)initWithName:(NSString *)name andSpn:(NSString *)spn;

- (void)acceptPatient:(Patient *)patient;


@end
