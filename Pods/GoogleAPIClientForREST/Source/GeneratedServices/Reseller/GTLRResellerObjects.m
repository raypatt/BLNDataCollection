// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Enterprise Apps Reseller API (reseller/v1)
// Description:
//   Creates and manages your customers and their subscriptions.
// Documentation:
//   https://developers.google.com/google-apps/reseller/

#import "GTLRResellerObjects.h"

// ----------------------------------------------------------------------------
//
//   GTLRReseller_Address
//

@implementation GTLRReseller_Address
@dynamic addressLine1, addressLine2, addressLine3, contactName, countryCode,
         kind, locality, organizationName, postalCode, region;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReseller_ChangePlanRequest
//

@implementation GTLRReseller_ChangePlanRequest
@dynamic dealCode, kind, planName, purchaseOrderId, seats;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReseller_Customer
//

@implementation GTLRReseller_Customer
@dynamic alternateEmail, customerDomain, customerDomainVerified, customerId,
         kind, phoneNumber, postalAddress, resourceUiUrl;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReseller_NotifyGetwatchdetailsResponse
//

@implementation GTLRReseller_NotifyGetwatchdetailsResponse
@dynamic serviceAccountEmailAddresses, topicName;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"serviceAccountEmailAddresses" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRReseller_NotifyResource
//

@implementation GTLRReseller_NotifyResource
@dynamic topicName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReseller_RenewalSettings
//

@implementation GTLRReseller_RenewalSettings
@dynamic kind, renewalType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReseller_Seats
//

@implementation GTLRReseller_Seats
@dynamic kind, licensedNumberOfSeats, maximumNumberOfSeats, numberOfSeats;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReseller_Subscription
//

@implementation GTLRReseller_Subscription
@dynamic billingMethod, creationTime, customerDomain, customerId, dealCode,
         kind, plan, purchaseOrderId, renewalSettings, resourceUiUrl, seats,
         skuId, status, subscriptionId, suspensionReasons, transferInfo,
         trialSettings;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"suspensionReasons" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRReseller_Subscription_Plan
//

@implementation GTLRReseller_Subscription_Plan
@dynamic commitmentInterval, isCommitmentPlan, planName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReseller_Subscription_TransferInfo
//

@implementation GTLRReseller_Subscription_TransferInfo
@dynamic minimumTransferableSeats, transferabilityExpirationTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReseller_Subscription_TrialSettings
//

@implementation GTLRReseller_Subscription_TrialSettings
@dynamic isInTrial, trialEndTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReseller_Subscription_Plan_CommitmentInterval
//

@implementation GTLRReseller_Subscription_Plan_CommitmentInterval
@dynamic endTime, startTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReseller_Subscriptions
//

@implementation GTLRReseller_Subscriptions
@dynamic kind, nextPageToken, subscriptions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"subscriptions" : [GTLRReseller_Subscription class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"subscriptions";
}

@end