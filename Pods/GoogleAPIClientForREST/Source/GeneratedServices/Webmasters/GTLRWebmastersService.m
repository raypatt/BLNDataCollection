// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Search Console API (webmasters/v3)
// Description:
//   View Google Search Console data for your verified sites.
// Documentation:
//   https://developers.google.com/webmaster-tools/

#import "GTLRWebmasters.h"

// ----------------------------------------------------------------------------
// Authorization scopes

NSString * const kGTLRAuthScopeWebmasters         = @"https://www.googleapis.com/auth/webmasters";
NSString * const kGTLRAuthScopeWebmastersReadonly = @"https://www.googleapis.com/auth/webmasters.readonly";

// ----------------------------------------------------------------------------
//   GTLRWebmastersService
//

@implementation GTLRWebmastersService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://www.googleapis.com/";
    self.servicePath = @"webmasters/v3/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
