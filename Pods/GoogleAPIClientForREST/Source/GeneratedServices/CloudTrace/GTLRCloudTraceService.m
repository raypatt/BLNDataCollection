// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Stackdriver Trace API (cloudtrace/v1)
// Description:
//   Send and retrieve trace data from Stackdriver Trace. Data is generated and
//   available by default for all App Engine applications. Data from other
//   applications can be written to Stackdriver Trace for display, reporting,
//   and analysis.
// Documentation:
//   https://cloud.google.com/trace

#import "GTLRCloudTrace.h"

// ----------------------------------------------------------------------------
// Authorization scopes

NSString * const kGTLRAuthScopeCloudTraceCloudPlatform = @"https://www.googleapis.com/auth/cloud-platform";
NSString * const kGTLRAuthScopeCloudTraceTraceAppend   = @"https://www.googleapis.com/auth/trace.append";
NSString * const kGTLRAuthScopeCloudTraceTraceReadonly = @"https://www.googleapis.com/auth/trace.readonly";

// ----------------------------------------------------------------------------
//   GTLRCloudTraceService
//

@implementation GTLRCloudTraceService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://cloudtrace.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint", @"pp" ];
  }
  return self;
}

@end