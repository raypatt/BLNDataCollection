// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Fitness (fitness/v1)
// Description:
//   Stores and accesses user data in the fitness store from apps on any
//   platform.
// Documentation:
//   https://developers.google.com/fit/rest/

#import "GTLRFitnessObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRFitness_AggregateBucket.type
NSString * const kGTLRFitness_AggregateBucket_Type_ActivitySegment = @"activitySegment";
NSString * const kGTLRFitness_AggregateBucket_Type_ActivityType = @"activityType";
NSString * const kGTLRFitness_AggregateBucket_Type_Session     = @"session";
NSString * const kGTLRFitness_AggregateBucket_Type_Time        = @"time";
NSString * const kGTLRFitness_AggregateBucket_Type_Unknown     = @"unknown";

// GTLRFitness_AggregateRequest.filteredDataQualityStandard
NSString * const kGTLRFitness_AggregateRequest_FilteredDataQualityStandard_DataQualityBloodGlucoseIso151972003 = @"dataQualityBloodGlucoseIso151972003";
NSString * const kGTLRFitness_AggregateRequest_FilteredDataQualityStandard_DataQualityBloodGlucoseIso151972013 = @"dataQualityBloodGlucoseIso151972013";
NSString * const kGTLRFitness_AggregateRequest_FilteredDataQualityStandard_DataQualityBloodPressureAami = @"dataQualityBloodPressureAami";
NSString * const kGTLRFitness_AggregateRequest_FilteredDataQualityStandard_DataQualityBloodPressureBhsAA = @"dataQualityBloodPressureBhsAA";
NSString * const kGTLRFitness_AggregateRequest_FilteredDataQualityStandard_DataQualityBloodPressureBhsAB = @"dataQualityBloodPressureBhsAB";
NSString * const kGTLRFitness_AggregateRequest_FilteredDataQualityStandard_DataQualityBloodPressureBhsBA = @"dataQualityBloodPressureBhsBA";
NSString * const kGTLRFitness_AggregateRequest_FilteredDataQualityStandard_DataQualityBloodPressureBhsBB = @"dataQualityBloodPressureBhsBB";
NSString * const kGTLRFitness_AggregateRequest_FilteredDataQualityStandard_DataQualityBloodPressureEsh2002 = @"dataQualityBloodPressureEsh2002";
NSString * const kGTLRFitness_AggregateRequest_FilteredDataQualityStandard_DataQualityBloodPressureEsh2010 = @"dataQualityBloodPressureEsh2010";
NSString * const kGTLRFitness_AggregateRequest_FilteredDataQualityStandard_DataQualityUnknown = @"dataQualityUnknown";

// GTLRFitness_BucketByTimePeriod.type
NSString * const kGTLRFitness_BucketByTimePeriod_Type_Day   = @"day";
NSString * const kGTLRFitness_BucketByTimePeriod_Type_Month = @"month";
NSString * const kGTLRFitness_BucketByTimePeriod_Type_Week  = @"week";

// GTLRFitness_DataSource.dataQualityStandard
NSString * const kGTLRFitness_DataSource_DataQualityStandard_DataQualityBloodGlucoseIso151972003 = @"dataQualityBloodGlucoseIso151972003";
NSString * const kGTLRFitness_DataSource_DataQualityStandard_DataQualityBloodGlucoseIso151972013 = @"dataQualityBloodGlucoseIso151972013";
NSString * const kGTLRFitness_DataSource_DataQualityStandard_DataQualityBloodPressureAami = @"dataQualityBloodPressureAami";
NSString * const kGTLRFitness_DataSource_DataQualityStandard_DataQualityBloodPressureBhsAA = @"dataQualityBloodPressureBhsAA";
NSString * const kGTLRFitness_DataSource_DataQualityStandard_DataQualityBloodPressureBhsAB = @"dataQualityBloodPressureBhsAB";
NSString * const kGTLRFitness_DataSource_DataQualityStandard_DataQualityBloodPressureBhsBA = @"dataQualityBloodPressureBhsBA";
NSString * const kGTLRFitness_DataSource_DataQualityStandard_DataQualityBloodPressureBhsBB = @"dataQualityBloodPressureBhsBB";
NSString * const kGTLRFitness_DataSource_DataQualityStandard_DataQualityBloodPressureEsh2002 = @"dataQualityBloodPressureEsh2002";
NSString * const kGTLRFitness_DataSource_DataQualityStandard_DataQualityBloodPressureEsh2010 = @"dataQualityBloodPressureEsh2010";
NSString * const kGTLRFitness_DataSource_DataQualityStandard_DataQualityUnknown = @"dataQualityUnknown";

// GTLRFitness_DataSource.type
NSString * const kGTLRFitness_DataSource_Type_Derived = @"derived";
NSString * const kGTLRFitness_DataSource_Type_Raw     = @"raw";

// GTLRFitness_DataTypeField.format
NSString * const kGTLRFitness_DataTypeField_Format_Blob        = @"blob";
NSString * const kGTLRFitness_DataTypeField_Format_FloatList   = @"floatList";
NSString * const kGTLRFitness_DataTypeField_Format_FloatPoint  = @"floatPoint";
NSString * const kGTLRFitness_DataTypeField_Format_Integer     = @"integer";
NSString * const kGTLRFitness_DataTypeField_Format_IntegerList = @"integerList";
NSString * const kGTLRFitness_DataTypeField_Format_Map         = @"map";
NSString * const kGTLRFitness_DataTypeField_Format_String      = @"string";

// GTLRFitness_Device.type
NSString * const kGTLRFitness_Device_Type_ChestStrap  = @"chestStrap";
NSString * const kGTLRFitness_Device_Type_HeadMounted = @"headMounted";
NSString * const kGTLRFitness_Device_Type_Phone       = @"phone";
NSString * const kGTLRFitness_Device_Type_Scale       = @"scale";
NSString * const kGTLRFitness_Device_Type_Tablet      = @"tablet";
NSString * const kGTLRFitness_Device_Type_Unknown     = @"unknown";
NSString * const kGTLRFitness_Device_Type_Watch       = @"watch";

// ----------------------------------------------------------------------------
//
//   GTLRFitness_AggregateBucket
//

@implementation GTLRFitness_AggregateBucket
@dynamic activity, dataset, endTimeMillis, session, startTimeMillis, type;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dataset" : [GTLRFitness_Dataset class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_AggregateBy
//

@implementation GTLRFitness_AggregateBy
@dynamic dataSourceId, dataTypeName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_AggregateRequest
//

@implementation GTLRFitness_AggregateRequest
@dynamic aggregateBy, bucketByActivitySegment, bucketByActivityType,
         bucketBySession, bucketByTime, endTimeMillis,
         filteredDataQualityStandard, startTimeMillis;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"aggregateBy" : [GTLRFitness_AggregateBy class],
    @"filteredDataQualityStandard" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_AggregateResponse
//

@implementation GTLRFitness_AggregateResponse
@dynamic bucket;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"bucket" : [GTLRFitness_AggregateBucket class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_Application
//

@implementation GTLRFitness_Application
@dynamic detailsUrl, name, packageName, version;
@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_BucketByActivity
//

@implementation GTLRFitness_BucketByActivity
@dynamic activityDataSourceId, minDurationMillis;
@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_BucketBySession
//

@implementation GTLRFitness_BucketBySession
@dynamic minDurationMillis;
@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_BucketByTime
//

@implementation GTLRFitness_BucketByTime
@dynamic durationMillis, period;
@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_BucketByTimePeriod
//

@implementation GTLRFitness_BucketByTimePeriod
@dynamic timeZoneId, type, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_DataPoint
//

@implementation GTLRFitness_DataPoint
@dynamic computationTimeMillis, dataTypeName, endTimeNanos, modifiedTimeMillis,
         originDataSourceId, rawTimestampNanos, startTimeNanos, value;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"value" : [GTLRFitness_Value class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_Dataset
//

@implementation GTLRFitness_Dataset
@dynamic dataSourceId, maxEndTimeNs, minStartTimeNs, nextPageToken, point;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"point" : [GTLRFitness_DataPoint class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"point";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_DataSource
//

@implementation GTLRFitness_DataSource
@dynamic application, dataQualityStandard, dataStreamId, dataStreamName,
         dataType, device, name, type;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dataQualityStandard" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_DataType
//

@implementation GTLRFitness_DataType
@dynamic field, name;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"field" : [GTLRFitness_DataTypeField class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_DataTypeField
//

@implementation GTLRFitness_DataTypeField
@dynamic format, name, optional;
@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_Device
//

@implementation GTLRFitness_Device
@dynamic manufacturer, model, type, uid, version;
@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_ListDataSourcesResponse
//

@implementation GTLRFitness_ListDataSourcesResponse
@dynamic dataSource;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dataSource" : [GTLRFitness_DataSource class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_ListSessionsResponse
//

@implementation GTLRFitness_ListSessionsResponse
@dynamic deletedSession, hasMoreData, nextPageToken, session;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"deletedSession" : [GTLRFitness_Session class],
    @"session" : [GTLRFitness_Session class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_MapValue
//

@implementation GTLRFitness_MapValue
@dynamic fpVal;
@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_Session
//

@implementation GTLRFitness_Session
@dynamic activeTimeMillis, activityType, application, descriptionProperty,
         endTimeMillis, identifier, modifiedTimeMillis, name, startTimeMillis;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"identifier" : @"id"
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_Value
//

@implementation GTLRFitness_Value
@dynamic fpVal, intVal, mapVal, stringVal;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"mapVal" : [GTLRFitness_ValueMapValEntry class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRFitness_ValueMapValEntry
//

@implementation GTLRFitness_ValueMapValEntry
@dynamic key, value;
@end
