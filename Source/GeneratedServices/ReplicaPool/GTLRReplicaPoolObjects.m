// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Replica Pool API (replicapool/v1beta1)
// Description:
//   The Replica Pool API allows users to declaratively provision and manage
//   groups of Google Compute Engine instances based on a common template.
// Documentation:
//   https://developers.google.com/compute/docs/replica-pool/

#import "GTLRReplicaPoolObjects.h"

// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_AccessConfig
//

@implementation GTLRReplicaPool_AccessConfig
@dynamic name, natIp, type;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_Action
//

@implementation GTLRReplicaPool_Action
@dynamic commands, envVariables, timeoutMilliSeconds;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"commands" : [NSString class],
    @"envVariables" : [GTLRReplicaPool_EnvVariable class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_DiskAttachment
//

@implementation GTLRReplicaPool_DiskAttachment
@dynamic deviceName, index;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_EnvVariable
//

@implementation GTLRReplicaPool_EnvVariable
@dynamic hidden, name, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_ExistingDisk
//

@implementation GTLRReplicaPool_ExistingDisk
@dynamic attachment, source;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_HealthCheck
//

@implementation GTLRReplicaPool_HealthCheck
@dynamic checkIntervalSec, descriptionProperty, healthyThreshold, host, name,
         path, port, timeoutSec, unhealthyThreshold;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_Label
//

@implementation GTLRReplicaPool_Label
@dynamic key, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_Metadata
//

@implementation GTLRReplicaPool_Metadata
@dynamic fingerPrint, items;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"items" : [GTLRReplicaPool_MetadataItem class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_MetadataItem
//

@implementation GTLRReplicaPool_MetadataItem
@dynamic key, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_NetworkInterface
//

@implementation GTLRReplicaPool_NetworkInterface
@dynamic accessConfigs, network, networkIp;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"accessConfigs" : [GTLRReplicaPool_AccessConfig class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_NewDisk
//

@implementation GTLRReplicaPool_NewDisk
@dynamic attachment, autoDelete, boot, initializeParams;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_NewDiskInitializeParams
//

@implementation GTLRReplicaPool_NewDiskInitializeParams
@dynamic diskSizeGb, diskType, sourceImage;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_Pool
//

@implementation GTLRReplicaPool_Pool
@dynamic autoRestart, baseInstanceName, currentNumReplicas, descriptionProperty,
         healthChecks, initialNumReplicas, labels, name, numReplicas,
         resourceViews, selfLink, targetPool, targetPools, templateProperty,
         type;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"templateProperty" : @"template"
  };
  return map;
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"healthChecks" : [GTLRReplicaPool_HealthCheck class],
    @"labels" : [GTLRReplicaPool_Label class],
    @"resourceViews" : [NSString class],
    @"targetPools" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_PoolsDeleteRequest
//

@implementation GTLRReplicaPool_PoolsDeleteRequest
@dynamic abandonInstances;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"abandonInstances" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_PoolsListResponse
//

@implementation GTLRReplicaPool_PoolsListResponse
@dynamic nextPageToken, resources;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"resources" : [GTLRReplicaPool_Pool class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"resources";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_Replica
//

@implementation GTLRReplicaPool_Replica
@dynamic name, selfLink, status;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_ReplicasDeleteRequest
//

@implementation GTLRReplicaPool_ReplicasDeleteRequest
@dynamic abandonInstance;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_ReplicasListResponse
//

@implementation GTLRReplicaPool_ReplicasListResponse
@dynamic nextPageToken, resources;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"resources" : [GTLRReplicaPool_Replica class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"resources";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_ReplicaStatus
//

@implementation GTLRReplicaPool_ReplicaStatus
@dynamic details, state, templateVersion, vmLink, vmStartTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_ServiceAccount
//

@implementation GTLRReplicaPool_ServiceAccount
@dynamic email, scopes;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"scopes" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_Tag
//

@implementation GTLRReplicaPool_Tag
@dynamic fingerPrint, items;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"items" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_Template
//

@implementation GTLRReplicaPool_Template
@dynamic action, healthChecks, version, vmParams;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"healthChecks" : [GTLRReplicaPool_HealthCheck class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRReplicaPool_VmParams
//

@implementation GTLRReplicaPool_VmParams
@dynamic baseInstanceName, canIpForward, descriptionProperty, disksToAttach,
         disksToCreate, machineType, metadata, networkInterfaces,
         onHostMaintenance, serviceAccounts, tags;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"disksToAttach" : [GTLRReplicaPool_ExistingDisk class],
    @"disksToCreate" : [GTLRReplicaPool_NewDisk class],
    @"networkInterfaces" : [GTLRReplicaPool_NetworkInterface class],
    @"serviceAccounts" : [GTLRReplicaPool_ServiceAccount class]
  };
  return map;
}

@end
