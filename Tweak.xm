// Define the path to our preference plist
#define PLIST_PATH @"/var/mobile/Library/Preferences/com.yaypixxo.squareswitcherxprefs.plist"

// Create a method we'll use to get the bool value of the enable switch
inline bool GetPrefBool(NSString *key) {
return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}

// What to modify
@interface SBAppSwitcherPageView : UIView
@property (assign,nonatomic) double cornerRadius;
-(void)_updateCornerRadius;
@end

// Hook into header
%hook SBAppSwitcherPageView

-(void)_updateCornerRadius {
// Check if enable switch is on (using the method we created earlier)
if (GetPrefBool(@"enabled")) {
	// Change corner radius
    %orig;
    self.cornerRadius = 5;
}
// If the enable switch is off, don't modify
else { 
    %orig;
}
}

// And cleanup
%end
