// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Monitoring API (cloudmonitoring/v2beta2)
// Description:
//   Accesses Google Cloud Monitoring data.
// Documentation:
//   https://cloud.google.com/monitoring/v2beta2/

#import "GTLRCloudMonitoringObjects.h"

// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_DeleteMetricDescriptorResponse
//

@implementation GTLRCloudMonitoring_DeleteMetricDescriptorResponse
@dynamic kind;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_ListMetricDescriptorsRequest
//

@implementation GTLRCloudMonitoring_ListMetricDescriptorsRequest
@dynamic kind;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_ListMetricDescriptorsResponse
//

@implementation GTLRCloudMonitoring_ListMetricDescriptorsResponse
@dynamic kind, metrics, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"metrics" : [GTLRCloudMonitoring_MetricDescriptor class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"metrics";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_ListTimeseriesDescriptorsRequest
//

@implementation GTLRCloudMonitoring_ListTimeseriesDescriptorsRequest
@dynamic kind;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_ListTimeseriesDescriptorsResponse
//

@implementation GTLRCloudMonitoring_ListTimeseriesDescriptorsResponse
@dynamic kind, nextPageToken, oldest, timeseries, youngest;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"timeseries" : [GTLRCloudMonitoring_TimeseriesDescriptor class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"timeseries";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_ListTimeseriesRequest
//

@implementation GTLRCloudMonitoring_ListTimeseriesRequest
@dynamic kind;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_ListTimeseriesResponse
//

@implementation GTLRCloudMonitoring_ListTimeseriesResponse
@dynamic kind, nextPageToken, oldest, timeseries, youngest;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"timeseries" : [GTLRCloudMonitoring_Timeseries class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"timeseries";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_MetricDescriptor
//

@implementation GTLRCloudMonitoring_MetricDescriptor
@dynamic descriptionProperty, labels, name, project, typeDescriptor;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"labels" : [GTLRCloudMonitoring_MetricDescriptorLabelDescriptor class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_MetricDescriptorLabelDescriptor
//

@implementation GTLRCloudMonitoring_MetricDescriptorLabelDescriptor
@dynamic descriptionProperty, key;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_MetricDescriptorTypeDescriptor
//

@implementation GTLRCloudMonitoring_MetricDescriptorTypeDescriptor
@dynamic metricType, valueType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_Point
//

@implementation GTLRCloudMonitoring_Point
@dynamic boolValue, distributionValue, doubleValue, end, int64Value, start,
         stringValue;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_PointDistribution
//

@implementation GTLRCloudMonitoring_PointDistribution
@dynamic buckets, overflowBucket, underflowBucket;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"buckets" : [GTLRCloudMonitoring_PointDistributionBucket class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_PointDistributionBucket
//

@implementation GTLRCloudMonitoring_PointDistributionBucket
@dynamic count, lowerBound, upperBound;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_PointDistributionOverflowBucket
//

@implementation GTLRCloudMonitoring_PointDistributionOverflowBucket
@dynamic count, lowerBound;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_PointDistributionUnderflowBucket
//

@implementation GTLRCloudMonitoring_PointDistributionUnderflowBucket
@dynamic count, upperBound;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_Timeseries
//

@implementation GTLRCloudMonitoring_Timeseries
@dynamic points, timeseriesDesc;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"points" : [GTLRCloudMonitoring_Point class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_TimeseriesDescriptor
//

@implementation GTLRCloudMonitoring_TimeseriesDescriptor
@dynamic labels, metric, project;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_TimeseriesDescriptor_Labels
//

@implementation GTLRCloudMonitoring_TimeseriesDescriptor_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_TimeseriesDescriptorLabel
//

@implementation GTLRCloudMonitoring_TimeseriesDescriptorLabel
@dynamic key, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_TimeseriesPoint
//

@implementation GTLRCloudMonitoring_TimeseriesPoint
@dynamic point, timeseriesDesc;
@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_WriteTimeseriesRequest
//

@implementation GTLRCloudMonitoring_WriteTimeseriesRequest
@dynamic commonLabels, timeseries;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"timeseries" : [GTLRCloudMonitoring_TimeseriesPoint class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_WriteTimeseriesRequest_CommonLabels
//

@implementation GTLRCloudMonitoring_WriteTimeseriesRequest_CommonLabels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRCloudMonitoring_WriteTimeseriesResponse
//

@implementation GTLRCloudMonitoring_WriteTimeseriesResponse
@dynamic kind;
@end