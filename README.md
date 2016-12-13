#UserDefault

***This repository is deprecated since we've moved the core implementation to [here](https://github.com/xingheng/UserDefaultsHelper) for supporting cocoapods integration.***



####An utility wrapper class for NSUserDefault.

>
    NSString *strUserDefaultKey = @"fooKey";
    [[NSUserDefaults standardUserDefaults] setObject:@"fooValue" forKey:strUserDefaultKey];
    NSString *obj = [[NSUserDefaults standardUserDefaults] objectForKey:strUserDefaultKey];

Tired of the above usage in your project? **Why not UserDefault? It's simple and brief!**

Let's do a replacement for the above code,

>
    NSString *strUserDefaultKey = @"fooKey";
    SetUserDefaultObject(strUserDefaultKey, @"fooValue");
    NSString *obj = UserDefaultObject(strUserDefaultKey);


Certainly, there is a map list for all kinds of objects for you,

| Type         | Getter                | Setter                |
| ------------ | --------------------- | --------------------- |
| Integer      | UserDefaultInteger    | SetUserDefaultInteger |
| BOOL         | UserDefaultBool       | SetUserDefaultBool    |
| float        | UserDefaultFloat      | SetUserDefaultFloat   |
| double       | UserDefaultDouble     | SetUserDefaultDouble  |
| NSURL        | UserDefaultURL        | SetUserDefaultURL     |
| NSString     | UserDefaultString     | SetUserDefaultObject  |
| NSArray      | UserDefaultArray      | SetUserDefaultObject  |
| NSDictionary | UserDefaultDictionary | SetUserDefaultObject  |
| NSData       | UserDefaultData       | SetUserDefaultObject  |
| id           | UserDefaultObject     | SetUserDefaultObject  |


<br />
Besides, some useful helper functions serve for you, too.

	// Send sync message to standard userdefault explicitly.
	void UserDefaultSynchronize();	
	
	// Remove the specified key from userdefault.
	void UserDefaultRemoveKey(NSString *key);
	
	// Register the specified default dictionary to userdefault.
	void UserDefaultRegister(NSDictionary *defaultDictionary);
	
	// Return all the values in userdefault as a dictionary.
	NSDictionary *UserDefaultAllValue();
	
	// Remove all the custome values except the specified keys' pair.
	void UserDefaultClearAllExcept(NSArray *keys);
	
	// Remove all the custom values.
	void UserDefaultClearAll();


###Install

Just download a copy of folder [UserDefaultUtility/Classes](https://github.com/xingheng/UserDefault/tree/master/UserDefaultUtility/Classes) and include the UserDefault.h/m to your project.

###Enjoy!