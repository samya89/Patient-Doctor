//
//  main.m
//  Patient Doctor
//
//  Created by Samia Al Rahmani on 3/12/15.
//  Copyright (c) 2015 Samia Al Rahmani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
          
        Patient *samya = [[Patient alloc] initWithName:@"Samya" andAge:@25 andHealthCard:YES andDisease:@"Eczema"];
                                  
        Patient *matt = [[Patient alloc] initWithName:@"Matt" andAge:@17 andHealthCard:YES andDisease:@"Acne"];
        Patient *jane = [[Patient alloc] initWithName:@"Jane" andAge:@30 andHealthCard:YES andDisease:@"Lupus"];

        Doctor *jones = [[Doctor alloc] initWithName:@"Dr. Jones" andSpn:@"Dermatologist"];
        Doctor *green = [[Doctor alloc] initWithName:@"Dr. Green" andSpn:@"Dermatologist"];
              
        [jones acceptPatient:samya];
        [jones acceptPatient:matt];
        [jones acceptPatient:jane];
        
        [jones requestMedication:samya];
        [jones requestMedication:matt];
        [jones requestMedication:jane];
                      
        [green acceptPatient:samya];
        [green acceptPatient:matt];
        [green acceptPatient:jane];
        
        [green requestMedication:samya];
        [green acceptPatient:matt];
        [green acceptPatient:jane];
          
    return 0;
}
}
