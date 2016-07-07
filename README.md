# iOS Custom Localizable and Plurals

You can check the code example to learn how to use plurals and localizable strings with custom names.


### Plurals

- Plurals with a custom name for example: "Plurals.stringsdict" you can name it as you want, say: "Home.stringsdict", add also, identifier of the concrete plural and the value which references the singular or plural.

```objc
    int singular = 1; //this is the value for singular
    int plural = 10; //this is the value for plurals
    
    // opinions is the Identifier of the plural
    // Plurals is the stringsdict's file name
    NSString *stringSingular = [NSString localizedStringWithFormat:
                                NSLocalizedStringFromTable(@"opinions", @"Plurals", @""),singular]; 
                                
    NSString *stringPlural = [NSString localizedStringWithFormat:
                                NSLocalizedStringFromTable(@"opinions", @"Plurals", @""),plural];
```  

- You don't want to use a specific name for your stringsdict plural file, just use NSLocalizedString as usual:

```objc
    int number_opinion = 1;
    NSString *stringOpCustom = [NSString localizedStringWithFormat:
                                NSLocalizedString(@"opinions", @"<this comment is optional>"), number_opinion];
``` 

### Localized String with Custom File Name

You have to reference the id and localized file name using **NSLocalizedStringFromTable**

```objc
    NSString *home = [NSString stringWithFormat:@"%@", NSLocalizedStringFromTable(@"home_land", @"Home", @"")];
    NSLog(@"Localizable with custom name Home %@", home);
```

That's it
