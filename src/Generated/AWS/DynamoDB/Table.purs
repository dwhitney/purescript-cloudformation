module CloudFormation.AWS.DynamoDB.Table where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::DynamoDB::Table`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html
-- |
-- | - `AttributeDefinitions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-attributedef
-- | - `BillingMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-billingmode
-- | - `GlobalSecondaryIndexes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-gsi
-- | - `KeySchema`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-keyschema
-- | - `LocalSecondaryIndexes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-lsi
-- | - `PointInTimeRecoverySpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-pointintimerecoveryspecification
-- | - `ProvisionedThroughput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-provisionedthroughput
-- | - `SSESpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-ssespecification
-- | - `StreamSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-streamspecification
-- | - `TableName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-tablename
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-tags
-- | - `TimeToLiveSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-timetolivespecification
newtype Table = Table
  { "KeySchema" :: Value (Array KeySchema)
  , "AttributeDefinitions" :: Maybe (Value (Array AttributeDefinition))
  , "BillingMode" :: Maybe (Value String)
  , "GlobalSecondaryIndexes" :: Maybe (Value (Array GlobalSecondaryIndex))
  , "LocalSecondaryIndexes" :: Maybe (Value (Array LocalSecondaryIndex))
  , "PointInTimeRecoverySpecification" :: Maybe (Value PointInTimeRecoverySpecification)
  , "ProvisionedThroughput" :: Maybe (Value ProvisionedThroughput)
  , "SSESpecification" :: Maybe (Value SSESpecification)
  , "StreamSpecification" :: Maybe (Value StreamSpecification)
  , "TableName" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "TimeToLiveSpecification" :: Maybe (Value TimeToLiveSpecification)
  }

derive instance newtypeTable :: Newtype Table _
derive newtype instance writeTable :: WriteForeign Table
instance resourceTable :: Resource Table where type_ _ = "AWS::DynamoDB::Table"

table :: { "KeySchema" :: Value (Array KeySchema) } -> Table
table required = Table
  (merge required
    { "AttributeDefinitions" : Nothing
    , "BillingMode" : Nothing
    , "GlobalSecondaryIndexes" : Nothing
    , "LocalSecondaryIndexes" : Nothing
    , "PointInTimeRecoverySpecification" : Nothing
    , "ProvisionedThroughput" : Nothing
    , "SSESpecification" : Nothing
    , "StreamSpecification" : Nothing
    , "TableName" : Nothing
    , "Tags" : Nothing
    , "TimeToLiveSpecification" : Nothing
    })

-- | `AWS::DynamoDB::Table.StreamSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-streamspecification.html
-- |
-- | - `StreamViewType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-streamspecification.html#cfn-dynamodb-streamspecification-streamviewtype
type StreamSpecification =
  { "StreamViewType" :: Value String
  }

streamSpecification :: { "StreamViewType" :: Value String } -> StreamSpecification
streamSpecification required =
  required

-- | `AWS::DynamoDB::Table.Projection`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html
-- |
-- | - `NonKeyAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html#cfn-dynamodb-projectionobj-nonkeyatt
-- | - `ProjectionType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-projectionobject.html#cfn-dynamodb-projectionobj-projtype
type Projection =
  { "NonKeyAttributes" :: Maybe (Value (Array String))
  , "ProjectionType" :: Maybe (Value String)
  }

projection :: Projection
projection =
  { "NonKeyAttributes" : Nothing
  , "ProjectionType" : Nothing
  }

-- | `AWS::DynamoDB::Table.KeySchema`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-keyschema.html
-- |
-- | - `AttributeName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-keyschema.html#aws-properties-dynamodb-keyschema-attributename
-- | - `KeyType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-keyschema.html#aws-properties-dynamodb-keyschema-keytype
type KeySchema =
  { "AttributeName" :: Value String
  , "KeyType" :: Value String
  }

keySchema :: { "AttributeName" :: Value String, "KeyType" :: Value String } -> KeySchema
keySchema required =
  required

-- | `AWS::DynamoDB::Table.GlobalSecondaryIndex`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html
-- |
-- | - `IndexName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-indexname
-- | - `KeySchema`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-keyschema
-- | - `Projection`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-projection
-- | - `ProvisionedThroughput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-provisionedthroughput
type GlobalSecondaryIndex =
  { "IndexName" :: Value String
  , "KeySchema" :: Value (Array KeySchema)
  , "Projection" :: Value Projection
  , "ProvisionedThroughput" :: Maybe (Value ProvisionedThroughput)
  }

globalSecondaryIndex :: { "IndexName" :: Value String, "KeySchema" :: Value (Array KeySchema), "Projection" :: Value Projection } -> GlobalSecondaryIndex
globalSecondaryIndex required =
  (merge required
    { "ProvisionedThroughput" : Nothing
    })

-- | `AWS::DynamoDB::Table.ProvisionedThroughput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html
-- |
-- | - `ReadCapacityUnits`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html#cfn-dynamodb-provisionedthroughput-readcapacityunits
-- | - `WriteCapacityUnits`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-provisionedthroughput.html#cfn-dynamodb-provisionedthroughput-writecapacityunits
type ProvisionedThroughput =
  { "ReadCapacityUnits" :: Value Number
  , "WriteCapacityUnits" :: Value Number
  }

provisionedThroughput :: { "ReadCapacityUnits" :: Value Number, "WriteCapacityUnits" :: Value Number } -> ProvisionedThroughput
provisionedThroughput required =
  required

-- | `AWS::DynamoDB::Table.AttributeDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-attributedef.html
-- |
-- | - `AttributeName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-attributedef.html#cfn-dynamodb-attributedef-attributename
-- | - `AttributeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-attributedef.html#cfn-dynamodb-attributedef-attributename-attributetype
type AttributeDefinition =
  { "AttributeName" :: Value String
  , "AttributeType" :: Value String
  }

attributeDefinition :: { "AttributeName" :: Value String, "AttributeType" :: Value String } -> AttributeDefinition
attributeDefinition required =
  required

-- | `AWS::DynamoDB::Table.TimeToLiveSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-timetolivespecification.html
-- |
-- | - `AttributeName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-timetolivespecification.html#cfn-dynamodb-timetolivespecification-attributename
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-timetolivespecification.html#cfn-dynamodb-timetolivespecification-enabled
type TimeToLiveSpecification =
  { "AttributeName" :: Value String
  , "Enabled" :: Value Boolean
  }

timeToLiveSpecification :: { "AttributeName" :: Value String, "Enabled" :: Value Boolean } -> TimeToLiveSpecification
timeToLiveSpecification required =
  required

-- | `AWS::DynamoDB::Table.SSESpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html
-- |
-- | - `KMSMasterKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html#cfn-dynamodb-table-ssespecification-kmsmasterkeyid
-- | - `SSEEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html#cfn-dynamodb-table-ssespecification-sseenabled
-- | - `SSEType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-ssespecification.html#cfn-dynamodb-table-ssespecification-ssetype
type SSESpecification =
  { "SSEEnabled" :: Value Boolean
  , "KMSMasterKeyId" :: Maybe (Value String)
  , "SSEType" :: Maybe (Value String)
  }

ssesSESpecification :: { "SSEEnabled" :: Value Boolean } -> SSESpecification
ssesSESpecification required =
  (merge required
    { "KMSMasterKeyId" : Nothing
    , "SSEType" : Nothing
    })

-- | `AWS::DynamoDB::Table.PointInTimeRecoverySpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-pointintimerecoveryspecification.html
-- |
-- | - `PointInTimeRecoveryEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-pointintimerecoveryspecification.html#cfn-dynamodb-table-pointintimerecoveryspecification-pointintimerecoveryenabled
type PointInTimeRecoverySpecification =
  { "PointInTimeRecoveryEnabled" :: Maybe (Value Boolean)
  }

pointInTimeRecoverySpecification :: PointInTimeRecoverySpecification
pointInTimeRecoverySpecification =
  { "PointInTimeRecoveryEnabled" : Nothing
  }

-- | `AWS::DynamoDB::Table.LocalSecondaryIndex`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-lsi.html
-- |
-- | - `IndexName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-lsi.html#cfn-dynamodb-lsi-indexname
-- | - `KeySchema`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-lsi.html#cfn-dynamodb-lsi-keyschema
-- | - `Projection`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-lsi.html#cfn-dynamodb-lsi-projection
type LocalSecondaryIndex =
  { "IndexName" :: Value String
  , "KeySchema" :: Value (Array KeySchema)
  , "Projection" :: Value Projection
  }

localSecondaryIndex :: { "IndexName" :: Value String, "KeySchema" :: Value (Array KeySchema), "Projection" :: Value Projection } -> LocalSecondaryIndex
localSecondaryIndex required =
  required