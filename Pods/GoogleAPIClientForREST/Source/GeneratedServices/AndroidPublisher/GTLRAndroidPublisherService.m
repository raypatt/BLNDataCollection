// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Play Developer API (androidpublisher/v2)
// Description:
//   Lets Android application developers access their Google Play accounts.
// Documentation:
//   https://developers.google.com/android-publisher

#import "GTLRAndroidPublisher.h"

// ----------------------------------------------------------------------------
// Authorization scope

NSString * const kGTLRAuthScopeAndroidPublisher = @"https://www.googleapis.com/auth/androidpublisher";

// ----------------------------------------------------------------------------
//   GTLRAndroidPublisherService
//

@implementation GTLRAndroidPublisherService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://www.googleapis.com/";
    self.servicePath = @"androidpublisher/v2/applications/";
    self.resumableUploadPath = @"resumable/upload/";
    self.simpleUploadPath = @"upload/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

+ (NSDictionary<NSString *, Class> *)kindStringToClassMap {
  return @{
    @"androidpublisher#apkListingsListResponse" : [GTLRAndroidPublisher_ApkListingsListResponse class],
    @"androidpublisher#apksListResponse" : [GTLRAndroidPublisher_ApksListResponse class],
    @"androidpublisher#entitlement" : [GTLRAndroidPublisher_Entitlement class],
    @"androidpublisher#inappproductsBatchResponse" : [GTLRAndroidPublisher_InappproductsBatchResponse class],
    @"androidpublisher#inappproductsListResponse" : [GTLRAndroidPublisher_InappproductsListResponse class],
    @"androidpublisher#listingsListResponse" : [GTLRAndroidPublisher_ListingsListResponse class],
    @"androidpublisher#productPurchase" : [GTLRAndroidPublisher_ProductPurchase class],
    @"androidpublisher#subscriptionPurchase" : [GTLRAndroidPublisher_SubscriptionPurchase class],
    @"androidpublisher#tracksListResponse" : [GTLRAndroidPublisher_TracksListResponse class],
    @"androidpublisher#voidedPurchase" : [GTLRAndroidPublisher_VoidedPurchase class],
  };
}

@end