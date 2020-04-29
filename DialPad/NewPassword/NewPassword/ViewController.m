//
//  ViewController.m
//  NewPassword
//
//  Created by Evo-Mac on 12/04/20.
//  Copyright © 2020 Evo-Mac. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *newPassword =[self newPassword:@"ab" b:@"zsd"];
    NSLog(@"NewPassword is %@",newPassword);
    
    
//    NSArray *items =[[NSArray alloc]initWithObjects:@"1",@"1",@"1",@"2",@"2",@"3",nil];
//    NSNumber *number = [NSNumber numberWithInteger:2];
//    [self deleteProducts:items m:number];
    
    
    // Do any additional setup after loading the view.
}


- (NSString *) newPassword:(NSString *)a b:(NSString *)b {
    // Write your code here
    
    NSUInteger maxStringLength;
    NSString *resultStr = nil;
    resultStr=[NSString stringWithFormat:@""];
    char fc ,sc;
    NSString *fcStr,*scStr;
    
    
    if(a.length > b.length)
    {
        maxStringLength = a.length;
    }
    else if(b.length > a.length)
    {
        maxStringLength = b.length;
    }
    else {
        maxStringLength = a.length;
    }
    
    
    
    
    
    for (int i=0; i<maxStringLength; i++)
    {
        if(a.length > i)
        {
            fc = [a characterAtIndex:i];
            fcStr =[NSString stringWithFormat:@"%c",fc];
        }
        else
        {
            fcStr=@"";
        }
   
        
        if(b.length > i)
        {
            sc = [b characterAtIndex:i];
            scStr =[NSString stringWithFormat:@"%c",sc];
        }
        else
        {
            scStr=@"";
        }
 

        resultStr=[resultStr stringByAppendingString:fcStr];
        resultStr=[resultStr stringByAppendingString:scStr];
        
    }
    
    return resultStr;
}



/*
- (NSNumber *) deleteProducts:(NSArray *)ids m:(NSNumber *)m {
    // Write your code here
    
    NSArray *uniqueObjects =[[NSSet setWithArray:ids]allObjects];
    NSLog(@"uniqueObjects from array %@",uniqueObjects);
    NSLog(@"uniqueObjects Count is %lu",(unsigned long)uniqueObjects.count);
    
    
    
    for (int i = 0; i<uniqueObjects.count; i++) {
        
        NSString *unqieObject = [NSString stringWithFormat:@"%@",[uniqueObjects objectAtIndex:i]];
        
        
        NSLog(@"unqieObject is %@",unqieObject);
        int uniqueIDItemCountInTheBag = 0;

        for (int j = 0; j<ids.count; j++)
        {
            NSString * itemFromBag =[NSString stringWithFormat:@"%@",[ids objectAtIndex:j]];
            
            if([unqieObject isEqualToString:itemFromBag])
            {
                uniqueIDItemCountInTheBag++;
                
                //NSLog(@"Items count with ID %@ in bag is %d",unqieObject,uniqueIDItemCountInTheBag);
               // NSLog(@"Item with this uniqueID is %@ and ID is %@",itemFromBag,unqieObject);
            }
            else
            {
                NSLog(@"Items count with ID %@ in bag is %d",unqieObject,uniqueIDItemCountInTheBag);

            }
        }
    }
    
    
    NSNumber *result =[NSNumber numberWithInteger:3];
    
    return result;
    
}
*/


@end
