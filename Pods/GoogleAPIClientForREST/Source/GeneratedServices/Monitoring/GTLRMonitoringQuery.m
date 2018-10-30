// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Stackdriver Monitoring API (monitoring/v3)
// Description:
//   Manages your Stackdriver Monitoring data and configurations. Most projects
//   must be associated with a Stackdriver account, with a few exceptions as
//   noted on the individual method pages.
// Documentation:
//   https://cloud.google.com/monitoring/api/

#import "GTLRMonitoringQuery.h"

#import "GTLRMonitoringObjects.h"

// ----------------------------------------------------------------------------
// Constants

// aggregationCrossSeriesReducer
NSString * const kGTLRMonitoringAggregationCrossSeriesReducerReduceCount = @"REDUCE_COUNT";
NSString * const kGTLRMonitoringAggregationCrossSeriesReducerReduceCountTrue = @"REDUCE_COUNT_TRUE";
NSString * const kGTLRMonitoringAggregationCrossSeriesReducerReduceFractionTrue = @"REDUCE_FRACTION_TRUE";
NSString * const kGTLRMonitoringAggregationCrossSeriesReducerReduceMax = @"REDUCE_MAX";
NSString * const kGTLRMonitoringAggregationCrossSeriesReducerReduceMean = @"REDUCE_MEAN";
NSString * const kGTLRMonitoringAggregationCrossSeriesReducerReduceMin = @"REDUCE_MIN";
NSString * const kGTLRMonitoringAggregationCrossSeriesReducerReduceNone = @"REDUCE_NONE";
NSString * const kGTLRMonitoringAggregationCrossSeriesReducerReducePercentile05 = @"REDUCE_PERCENTILE_05";
NSString * const kGTLRMonitoringAggregationCrossSeriesReducerReducePercentile50 = @"REDUCE_PERCENTILE_50";
NSString * const kGTLRMonitoringAggregationCrossSeriesReducerReducePercentile95 = @"REDUCE_PERCENTILE_95";
NSString * const kGTLRMonitoringAggregationCrossSeriesReducerReducePercentile99 = @"REDUCE_PERCENTILE_99";
NSString * const kGTLRMonitoringAggregationCrossSeriesReducerReduceStddev = @"REDUCE_STDDEV";
NSString * const kGTLRMonitoringAggregationCrossSeriesReducerReduceSum = @"REDUCE_SUM";

// aggregationPerSeriesAligner
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignCount = @"ALIGN_COUNT";
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignCountTrue = @"ALIGN_COUNT_TRUE";
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignDelta = @"ALIGN_DELTA";
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignFractionTrue = @"ALIGN_FRACTION_TRUE";
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignInterpolate = @"ALIGN_INTERPOLATE";
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignMax = @"ALIGN_MAX";
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignMean = @"ALIGN_MEAN";
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignMin = @"ALIGN_MIN";
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignNextOlder = @"ALIGN_NEXT_OLDER";
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignNone = @"ALIGN_NONE";
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignPercentile05 = @"ALIGN_PERCENTILE_05";
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignPercentile50 = @"ALIGN_PERCENTILE_50";
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignPercentile95 = @"ALIGN_PERCENTILE_95";
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignPercentile99 = @"ALIGN_PERCENTILE_99";
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignRate = @"ALIGN_RATE";
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignStddev = @"ALIGN_STDDEV";
NSString * const kGTLRMonitoringAggregationPerSeriesAlignerAlignSum = @"ALIGN_SUM";

// view
NSString * const kGTLRMonitoringViewFull    = @"FULL";
NSString * const kGTLRMonitoringViewHeaders = @"HEADERS";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRMonitoringQuery

@dynamic fields;

@end

@implementation GTLRMonitoringQuery_ProjectsCollectdTimeSeriesCreate

@dynamic name;

+ (instancetype)queryWithObject:(GTLRMonitoring_CreateCollectdTimeSeriesRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}/collectdTimeSeries";
  GTLRMonitoringQuery_ProjectsCollectdTimeSeriesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRMonitoring_Empty class];
  query.loggingName = @"monitoring.projects.collectdTimeSeries.create";
  return query;
}

@end

@implementation GTLRMonitoringQuery_ProjectsGroupsCreate

@dynamic name, validateOnly;

+ (instancetype)queryWithObject:(GTLRMonitoring_Group *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}/groups";
  GTLRMonitoringQuery_ProjectsGroupsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRMonitoring_Group class];
  query.loggingName = @"monitoring.projects.groups.create";
  return query;
}

@end

@implementation GTLRMonitoringQuery_ProjectsGroupsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}";
  GTLRMonitoringQuery_ProjectsGroupsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRMonitoring_Empty class];
  query.loggingName = @"monitoring.projects.groups.delete";
  return query;
}

@end

@implementation GTLRMonitoringQuery_ProjectsGroupsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}";
  GTLRMonitoringQuery_ProjectsGroupsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRMonitoring_Group class];
  query.loggingName = @"monitoring.projects.groups.get";
  return query;
}

@end

@implementation GTLRMonitoringQuery_ProjectsGroupsList

@dynamic ancestorsOfGroup, childrenOfGroup, descendantsOfGroup, name, pageSize,
         pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}/groups";
  GTLRMonitoringQuery_ProjectsGroupsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRMonitoring_ListGroupsResponse class];
  query.loggingName = @"monitoring.projects.groups.list";
  return query;
}

@end

@implementation GTLRMonitoringQuery_ProjectsGroupsMembersList

@dynamic filter, intervalEndTime, intervalStartTime, name, pageSize, pageToken;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"intervalEndTime" : @"interval.endTime",
    @"intervalStartTime" : @"interval.startTime"
  };
  return map;
}

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}/members";
  GTLRMonitoringQuery_ProjectsGroupsMembersList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRMonitoring_ListGroupMembersResponse class];
  query.loggingName = @"monitoring.projects.groups.members.list";
  return query;
}

@end

@implementation GTLRMonitoringQuery_ProjectsGroupsUpdate

@dynamic name, validateOnly;

+ (instancetype)queryWithObject:(GTLRMonitoring_Group *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}";
  GTLRMonitoringQuery_ProjectsGroupsUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRMonitoring_Group class];
  query.loggingName = @"monitoring.projects.groups.update";
  return query;
}

@end

@implementation GTLRMonitoringQuery_ProjectsMetricDescriptorsCreate

@dynamic name;

+ (instancetype)queryWithObject:(GTLRMonitoring_MetricDescriptor *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}/metricDescriptors";
  GTLRMonitoringQuery_ProjectsMetricDescriptorsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRMonitoring_MetricDescriptor class];
  query.loggingName = @"monitoring.projects.metricDescriptors.create";
  return query;
}

@end

@implementation GTLRMonitoringQuery_ProjectsMetricDescriptorsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}";
  GTLRMonitoringQuery_ProjectsMetricDescriptorsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRMonitoring_Empty class];
  query.loggingName = @"monitoring.projects.metricDescriptors.delete";
  return query;
}

@end

@implementation GTLRMonitoringQuery_ProjectsMetricDescriptorsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}";
  GTLRMonitoringQuery_ProjectsMetricDescriptorsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRMonitoring_MetricDescriptor class];
  query.loggingName = @"monitoring.projects.metricDescriptors.get";
  return query;
}

@end

@implementation GTLRMonitoringQuery_ProjectsMetricDescriptorsList

@dynamic filter, name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}/metricDescriptors";
  GTLRMonitoringQuery_ProjectsMetricDescriptorsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRMonitoring_ListMetricDescriptorsResponse class];
  query.loggingName = @"monitoring.projects.metricDescriptors.list";
  return query;
}

@end

@implementation GTLRMonitoringQuery_ProjectsMonitoredResourceDescriptorsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}";
  GTLRMonitoringQuery_ProjectsMonitoredResourceDescriptorsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRMonitoring_MonitoredResourceDescriptor class];
  query.loggingName = @"monitoring.projects.monitoredResourceDescriptors.get";
  return query;
}

@end

@implementation GTLRMonitoringQuery_ProjectsMonitoredResourceDescriptorsList

@dynamic filter, name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}/monitoredResourceDescriptors";
  GTLRMonitoringQuery_ProjectsMonitoredResourceDescriptorsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRMonitoring_ListMonitoredResourceDescriptorsResponse class];
  query.loggingName = @"monitoring.projects.monitoredResourceDescriptors.list";
  return query;
}

@end

@implementation GTLRMonitoringQuery_ProjectsTimeSeriesCreate

@dynamic name;

+ (instancetype)queryWithObject:(GTLRMonitoring_CreateTimeSeriesRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}/timeSeries";
  GTLRMonitoringQuery_ProjectsTimeSeriesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRMonitoring_Empty class];
  query.loggingName = @"monitoring.projects.timeSeries.create";
  return query;
}

@end

@implementation GTLRMonitoringQuery_ProjectsTimeSeriesList

@dynamic aggregationAlignmentPeriod, aggregationCrossSeriesReducer,
         aggregationGroupByFields, aggregationPerSeriesAligner, filter,
         intervalEndTime, intervalStartTime, name, orderBy, pageSize, pageToken,
         view;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"aggregationAlignmentPeriod" : @"aggregation.alignmentPeriod",
    @"aggregationCrossSeriesReducer" : @"aggregation.crossSeriesReducer",
    @"aggregationGroupByFields" : @"aggregation.groupByFields",
    @"aggregationPerSeriesAligner" : @"aggregation.perSeriesAligner",
    @"intervalEndTime" : @"interval.endTime",
    @"intervalStartTime" : @"interval.startTime"
  };
  return map;
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"aggregation.groupByFields" : [NSString class]
  };
  return map;
}

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v3/{+name}/timeSeries";
  GTLRMonitoringQuery_ProjectsTimeSeriesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRMonitoring_ListTimeSeriesResponse class];
  query.loggingName = @"monitoring.projects.timeSeries.list";
  return query;
}

@end