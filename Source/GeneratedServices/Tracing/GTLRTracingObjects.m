// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Tracing API (tracing/v2)
// Description:
//   Send and retrieve trace data from Google Stackdriver Trace.
// Documentation:
//   https://cloud.google.com/trace

#import "GTLRTracingObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRTracing_Link.type
NSString * const kGTLRTracing_Link_Type_Child           = @"CHILD";
NSString * const kGTLRTracing_Link_Type_Parent          = @"PARENT";
NSString * const kGTLRTracing_Link_Type_TypeUnspecified = @"TYPE_UNSPECIFIED";

// GTLRTracing_NetworkEvent.type
NSString * const kGTLRTracing_NetworkEvent_Type_Recv           = @"RECV";
NSString * const kGTLRTracing_NetworkEvent_Type_Sent           = @"SENT";
NSString * const kGTLRTracing_NetworkEvent_Type_TypeUnspecified = @"TYPE_UNSPECIFIED";

// ----------------------------------------------------------------------------
//
//   GTLRTracing_Annotation
//

@implementation GTLRTracing_Annotation
@dynamic attributes, descriptionProperty;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_Attributes
//

@implementation GTLRTracing_Attributes
@dynamic attributeMap, droppedAttributesCount;
@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_Attributes_AttributeMap
//

@implementation GTLRTracing_Attributes_AttributeMap

+ (Class)classForAdditionalProperties {
  return [GTLRTracing_AttributeValue class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_AttributeValue
//

@implementation GTLRTracing_AttributeValue
@dynamic boolValue, intValue, stringValue;
@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_BatchWriteSpansRequest
//

@implementation GTLRTracing_BatchWriteSpansRequest
@dynamic spans;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"spans" : [GTLRTracing_Span class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_Empty
//

@implementation GTLRTracing_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_Link
//

@implementation GTLRTracing_Link
@dynamic spanId, traceId, type;
@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_Links
//

@implementation GTLRTracing_Links
@dynamic droppedLinksCount, link;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"link" : [GTLRTracing_Link class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_ListSpansResponse
//

@implementation GTLRTracing_ListSpansResponse
@dynamic nextPageToken, spans;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"spans" : [GTLRTracing_Span class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"spans";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_ListTracesResponse
//

@implementation GTLRTracing_ListTracesResponse
@dynamic nextPageToken, traces;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"traces" : [GTLRTracing_Trace class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"traces";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_Module
//

@implementation GTLRTracing_Module
@dynamic buildId, module;
@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_NetworkEvent
//

@implementation GTLRTracing_NetworkEvent
@dynamic messageId, messageSize, time, type;
@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_Span
//

@implementation GTLRTracing_Span
@dynamic attributes, displayName, endTime, links, name, parentSpanId, spanId,
         stackTrace, startTime, status, timeEvents;
@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_StackFrame
//

@implementation GTLRTracing_StackFrame
@dynamic columnNumber, fileName, functionName, lineNumber, loadModule,
         originalFunctionName, sourceVersion;
@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_StackFrames
//

@implementation GTLRTracing_StackFrames
@dynamic droppedFramesCount, frame;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"frame" : [GTLRTracing_StackFrame class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_StackTrace
//

@implementation GTLRTracing_StackTrace
@dynamic stackFrames, stackTraceHashId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_Status
//

@implementation GTLRTracing_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRTracing_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_Status_Details_Item
//

@implementation GTLRTracing_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_TimeEvent
//

@implementation GTLRTracing_TimeEvent
@dynamic annotation, networkEvent, time;
@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_TimeEvents
//

@implementation GTLRTracing_TimeEvents
@dynamic droppedAnnotationsCount, droppedNetworkEventsCount, timeEvent;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"timeEvent" : [GTLRTracing_TimeEvent class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_Trace
//

@implementation GTLRTracing_Trace
@dynamic name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRTracing_TruncatableString
//

@implementation GTLRTracing_TruncatableString
@dynamic truncatedCharacterCount, value;
@end
