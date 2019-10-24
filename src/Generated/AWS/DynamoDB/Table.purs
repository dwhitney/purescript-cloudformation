module CloudFormation.AWS.DynamoDB.Table where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "KeySchema" :: Array KeySchema
  , "AttributeDefinitions" :: Maybe (Array AttributeDefinition)
  , "BillingMode" :: Maybe String
  , "GlobalSecondaryIndexes" :: Maybe (Array GlobalSecondaryIndex)
  , "LocalSecondaryIndexes" :: Maybe (Array LocalSecondaryIndex)
  , "PointInTimeRecoverySpecification" :: Maybe PointInTimeRecoverySpecification
  , "ProvisionedThroughput" :: Maybe ProvisionedThroughput
  , "SSESpecification" :: Maybe SSESpecification
  , "StreamSpecification" :: Maybe StreamSpecification
  , "TableName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "TimeToLiveSpecification" :: Maybe TimeToLiveSpecification
  }

derive instance newtypeTable :: Newtype Table _
instance resourceTable :: Resource Table where type_ _ = "AWS::DynamoDB::Table"

table :: { "KeySchema" :: Array KeySchema } -> Table
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
  { "StreamViewType" :: String
  }

streamSpecification :: { "StreamViewType" :: String } -> StreamSpecification
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
  { "NonKeyAttributes" :: Maybe (Array String)
  , "ProjectionType" :: Maybe String
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
  { "AttributeName" :: String
  , "KeyType" :: String
  }

keySchema :: { "AttributeName" :: String, "KeyType" :: String } -> KeySchema
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
  { "IndexName" :: String
  , "KeySchema" :: Array KeySchema
  , "Projection" :: Projection
  , "ProvisionedThroughput" :: Maybe ProvisionedThroughput
  }

globalSecondaryIndex :: { "IndexName" :: String, "KeySchema" :: Array KeySchema, "Projection" :: Projection } -> GlobalSecondaryIndex
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
  { "ReadCapacityUnits" :: Number
  , "WriteCapacityUnits" :: Number
  }

provisionedThroughput :: { "ReadCapacityUnits" :: Number, "WriteCapacityUnits" :: Number } -> ProvisionedThroughput
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
  { "AttributeName" :: String
  , "AttributeType" :: String
  }

attributeDefinition :: { "AttributeName" :: String, "AttributeType" :: String } -> AttributeDefinition
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
  { "AttributeName" :: String
  , "Enabled" :: Boolean
  }

timeToLiveSpecification :: { "AttributeName" :: String, "Enabled" :: Boolean } -> TimeToLiveSpecification
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
  { "SSEEnabled" :: Boolean
  , "KMSMasterKeyId" :: Maybe String
  , "SSEType" :: Maybe String
  }

ssesSESpecification :: { "SSEEnabled" :: Boolean } -> SSESpecification
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
  { "PointInTimeRecoveryEnabled" :: Maybe Boolean
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
  { "IndexName" :: String
  , "KeySchema" :: Array KeySchema
  , "Projection" :: Projection
  }

localSecondaryIndex :: { "IndexName" :: String, "KeySchema" :: Array KeySchema, "Projection" :: Projection } -> LocalSecondaryIndex
localSecondaryIndex required =
  required