module CloudFormation.AWS.ApiGateway.ApiKey where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApiGateway::ApiKey`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html
-- |
-- | - `CustomerId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-customerid
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-description
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-enabled
-- | - `GenerateDistinctId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-generatedistinctid
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-name
-- | - `StageKeys`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-stagekeys
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-apikey.html#cfn-apigateway-apikey-value
newtype ApiKey = ApiKey
  { "CustomerId" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "Enabled" :: Maybe (Value Boolean)
  , "GenerateDistinctId" :: Maybe (Value Boolean)
  , "Name" :: Maybe (Value String)
  , "StageKeys" :: Maybe (Value (Array StageKey))
  , "Value" :: Maybe (Value String)
  }

derive instance newtypeApiKey :: Newtype ApiKey _
derive newtype instance writeApiKey :: WriteForeign ApiKey
instance resourceApiKey :: Resource ApiKey where type_ _ = "AWS::ApiGateway::ApiKey"

apiKey :: ApiKey
apiKey = ApiKey
  { "CustomerId" : Nothing
  , "Description" : Nothing
  , "Enabled" : Nothing
  , "GenerateDistinctId" : Nothing
  , "Name" : Nothing
  , "StageKeys" : Nothing
  , "Value" : Nothing
  }

-- | `AWS::ApiGateway::ApiKey.StageKey`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-apikey-stagekey.html
-- |
-- | - `RestApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-apikey-stagekey.html#cfn-apigateway-apikey-stagekey-restapiid
-- | - `StageName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-apikey-stagekey.html#cfn-apigateway-apikey-stagekey-stagename
type StageKey =
  { "RestApiId" :: Maybe (Value String)
  , "StageName" :: Maybe (Value String)
  }

stageKey :: StageKey
stageKey =
  { "RestApiId" : Nothing
  , "StageName" : Nothing
  }