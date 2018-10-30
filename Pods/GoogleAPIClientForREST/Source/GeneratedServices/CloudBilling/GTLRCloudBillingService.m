// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Cloud Billing API (cloudbilling/v1)
// Description:
//   Allows developers to manage billing for their Google Cloud Platform
//   projects
//   programmatically.
// Documentation:
//   https://cloud.google.com/billing/

#import "GTLRCloudBilling.h"

// ----------------------------------------------------------------------------
// Authorization scope

NSString * const kGTLRAuthScopeCloudBillingCloudPlatform = @"https://www.googleapis.com/auth/cloud-platform";

// ----------------------------------------------------------------------------
//   GTLRCloudBillingService
//

@implementation GTLRCloudBillingService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://cloudbilling.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint", @"pp" ];
  }
  return self;
}

@end