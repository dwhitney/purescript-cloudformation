module CloudFormation.AWS.DynamoDB.Table where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type Table =
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

table :: { "KeySchema" :: Array KeySchema } -> Table
table required =
  merge required
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
    }

type StreamSpecification =
  { "StreamViewType" :: String
  }

streamSpecification :: { "StreamViewType" :: String } -> StreamSpecification
streamSpecification required =
  required

type Projection =
  { "NonKeyAttributes" :: Maybe (Array String)
  , "ProjectionType" :: Maybe String
  }

projection :: Projection
projection =
  { "NonKeyAttributes" : Nothing
  , "ProjectionType" : Nothing
  }

type KeySchema =
  { "AttributeName" :: String
  , "KeyType" :: String
  }

keySchema :: { "AttributeName" :: String, "KeyType" :: String } -> KeySchema
keySchema required =
  required

type GlobalSecondaryIndex =
  { "IndexName" :: String
  , "KeySchema" :: Array KeySchema
  , "Projection" :: Projection
  , "ProvisionedThroughput" :: Maybe ProvisionedThroughput
  }

globalSecondaryIndex :: { "IndexName" :: String, "KeySchema" :: Array KeySchema, "Projection" :: Projection } -> GlobalSecondaryIndex
globalSecondaryIndex required =
  merge required
    { "ProvisionedThroughput" : Nothing
    }

type ProvisionedThroughput =
  { "ReadCapacityUnits" :: Number
  , "WriteCapacityUnits" :: Number
  }

provisionedThroughput :: { "ReadCapacityUnits" :: Number, "WriteCapacityUnits" :: Number } -> ProvisionedThroughput
provisionedThroughput required =
  required

type AttributeDefinition =
  { "AttributeName" :: String
  , "AttributeType" :: String
  }

attributeDefinition :: { "AttributeName" :: String, "AttributeType" :: String } -> AttributeDefinition
attributeDefinition required =
  required

type TimeToLiveSpecification =
  { "AttributeName" :: String
  , "Enabled" :: Boolean
  }

timeToLiveSpecification :: { "AttributeName" :: String, "Enabled" :: Boolean } -> TimeToLiveSpecification
timeToLiveSpecification required =
  required

type SSESpecification =
  { "SSEEnabled" :: Boolean
  , "KMSMasterKeyId" :: Maybe String
  , "SSEType" :: Maybe String
  }

ssesSESpecification :: { "SSEEnabled" :: Boolean } -> SSESpecification
ssesSESpecification required =
  merge required
    { "KMSMasterKeyId" : Nothing
    , "SSEType" : Nothing
    }

type PointInTimeRecoverySpecification =
  { "PointInTimeRecoveryEnabled" :: Maybe Boolean
  }

pointInTimeRecoverySpecification :: PointInTimeRecoverySpecification
pointInTimeRecoverySpecification =
  { "PointInTimeRecoveryEnabled" : Nothing
  }

type LocalSecondaryIndex =
  { "IndexName" :: String
  , "KeySchema" :: Array KeySchema
  , "Projection" :: Projection
  }

localSecondaryIndex :: { "IndexName" :: String, "KeySchema" :: Array KeySchema, "Projection" :: Projection } -> LocalSecondaryIndex
localSecondaryIndex required =
  required