#import "FlutplugPlugin.h"
#if __has_include(<flutplug/flutplug-Swift.h>)
#import <flutplug/flutplug-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutplug-Swift.h"
#endif

@implementation FlutplugPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutplugPlugin registerWithRegistrar:registrar];
}
@end
