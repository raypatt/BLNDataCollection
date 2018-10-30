// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Tool Results API (toolresults/v1beta3)
// Description:
//   Reads and publishes results from Firebase Test Lab.
// Documentation:
//   https://firebase.google.com/docs/test-lab/

#import "GTLRToolResults.h"

// ----------------------------------------------------------------------------
// Authorization scope

NSString * const kGTLRAuthScopeToolResultsCloudPlatform = @"https://www.googleapis.com/auth/cloud-platform";

// ----------------------------------------------------------------------------
//   GTLRToolResultsService
//

@implementation GTLRToolResultsService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://www.googleapis.com/";
    self.servicePath = @"toolresults/v1beta3/projects/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end