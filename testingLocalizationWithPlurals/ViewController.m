//
//  ViewController.m
//  testingLocalizationWithPlurals
//
//  Created by Sofía Swidarowicz Andrade on 27/6/16.
//  Copyright © 2016 Sofía Swidarowicz Andrade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelText;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    int opinions = 1;
    int opinionsMulti = 10;
    
    
    //Plurals without custom  name "localizable.stringsdict"
    NSString *stringOp = [NSString localizedStringWithFormat:
                        NSLocalizedString(@"opinions", @"opinions"), opinions];
    
    NSString *stringOpMulti = [NSString localizedStringWithFormat:
                          NSLocalizedString(@"opinions", @"opinions"), opinionsMulti];
    
    NSLog(@"plurals opinions %@", stringOp);
    NSLog(@"plurals opinions multi %@", stringOpMulti);

    //Plurals with custom name Plurals.stringsdict
    NSString *stringOpCustom = [NSString localizedStringWithFormat:
                          NSLocalizedStringFromTable(@"opinions", @"Plurals", @""),opinions];
    
    NSString *stringOpMultiCustom = [NSString localizedStringWithFormat:NSLocalizedStringFromTable(@"opinions", @"Plurals", @""),opinionsMulti];
    
       
    NSLog(@"plurals opinions %@", stringOpCustom);
    NSLog(@"plurals opinions multi %@", stringOpMultiCustom);
    
    
    //localizable.string with custom name
    NSString *home = [NSString stringWithFormat:@"%@", NSLocalizedStringFromTable(@"home_land", @"Home", @"")];
    NSLog(@"Localizable with custom name Home %@", home);

    

    self.labelText.text = home;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
