//
//  Doctor.m
//  Patient Doctor
//
//  Created by Samia Al Rahmani on 3/12/15.
//  Copyright (c) 2015 Samia Al Rahmani. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name andSpn:(NSString *)spn
{
    self = [super init];
    if (self) {
        self.doctorName = name;
        self.doctorSpn = spn;
        self.patientList = [[NSMutableArray alloc] init];
        self.symptoms = [[NSDictionary alloc] initWithObjects:@[@"Allantoin",@"Dapsone", @"Retin-A", @"Meropenem"] forKeys:@[@"Lupus", @"Eczema", @"Acne", @"Moles"]];
    }
    return self;
}

- (void)acceptPatient:(Patient *)patient {
    if (patient.healthCard) {
        [self.patientList addObject:patient];
    } else {
//        NSLog(@"I'm sorry %@, we cannot treat patients without a healthcard.", patient);
    }
}

- (void) doctorIntro{
        NSLog(@"I'm %@, your %@.", self.doctorName, self.doctorSpn);
}

- (void)requestMedication:(Patient *)patient{

    for (Patient* eachPatient in self.patientList) {
        if (eachPatient == patient){
            
//            NSString *pdisease = patient.disease;
            
            NSString *treatment = [self.symptoms objectForKey:patient.disease];
            [patient.prescriptionList addObject:treatment];
        }
    }
    
//    if ([self acceptPatient:patient]) {
//        
//        self.
//        
//        NSlog(@"You have %@ and I'm going to prescribe you %@.", patient.disease, self.symptoms);
//        
//        
//        return YES;
//    }
//    else {
//        return NO;
//    }
}










@end
