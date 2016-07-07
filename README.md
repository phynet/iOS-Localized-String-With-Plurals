# iOS Custom Localizable and Plurals

You can check the code example to learn how to use plurals and localizable strings with custom names.

- Plurals with a custom name for example: "Plurals.stringsdict" you can name it as you want, say: "Home.stringsdict" add also, reference the concrete plural value ID and the value which references the singular or plural

```objc
    int number_opinion = 1;
    NSString *stringOpCustom = [NSString localizedStringWithFormat:NSLocalizedStringFromTable(@"opinions", @"Plurals", @""),opinions];
```  


