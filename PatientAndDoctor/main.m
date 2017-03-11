//
//  main.m
//  PatientAndDoctor
//
//  Created by Nelson Chow on 2017-03-11.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patient *bob = [[Patient alloc] initWithFirstName:@"Bob" andLastName:@"Builder" andAge:32 andHasValidHealthCard:NO];
        
        Doctor *pat = [[Doctor alloc] initWithFirstName:@"Patrick" andLastName:@"Star" andSpecialization:@"Rocktherapy"];
        
        [bob visitDoctor:pat];
    }
    return 0;
}
