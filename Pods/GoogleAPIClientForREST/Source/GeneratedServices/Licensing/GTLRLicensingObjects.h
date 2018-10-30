// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Enterprise License Manager API (licensing/v1)
// Description:
//   Licensing API to view and manage license for your domain.
// Documentation:
//   https://developers.google.com/google-apps/licensing/

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRObject.h"
#else
  #import "GTLRObject.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRLicensing_LicenseAssignment;

NS_ASSUME_NONNULL_BEGIN

/**
 *  Template for LiscenseAssignment Resource
 */
@interface GTLRLicensing_LicenseAssignment : GTLRObject

/** ETag of the resource. */
@property(nonatomic, copy, nullable) NSString *etags;

/** Identifies the resource as a LicenseAssignment. */
@property(nonatomic, copy, nullable) NSString *kind;

/** Name of the product. */
@property(nonatomic, copy, nullable) NSString *productId;

/** Link to this page. */
@property(nonatomic, copy, nullable) NSString *selfLink;

/** Name of the sku of the product. */
@property(nonatomic, copy, nullable) NSString *skuId;

/** Email id of the user. */
@property(nonatomic, copy, nullable) NSString *userId;

@end


/**
 *  Template for LicenseAssignment Insert request
 */
@interface GTLRLicensing_LicenseAssignmentInsert : GTLRObject

/** Email id of the user */
@property(nonatomic, copy, nullable) NSString *userId;

@end


/**
 *  LicesnseAssignment List for a given product/sku for a customer.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "items" property. If returned as the result of a query, it should
 *        support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLRLicensing_LicenseAssignmentList : GTLRCollectionObject

/** ETag of the resource. */
@property(nonatomic, copy, nullable) NSString *ETag;

/**
 *  The LicenseAssignments in this page of results.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRLicensing_LicenseAssignment *> *items;

/** Identifies the resource as a collection of LicenseAssignments. */
@property(nonatomic, copy, nullable) NSString *kind;

/**
 *  The continuation token, used to page through large result sets. Provide this
 *  value in a subsequent request to return the next page of results.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

@end

NS_ASSUME_NONNULL_END
