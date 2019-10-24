module CloudFormation.AWS.ApiGateway.ApiKey where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "CustomerId" :: Maybe String
  , "Description" :: Maybe String
  , "Enabled" :: Maybe Boolean
  , "GenerateDistinctId" :: Maybe Boolean
  , "Name" :: Maybe String
  , "StageKeys" :: Maybe (Array StageKey)
  , "Value" :: Maybe String
  }

derive instance newtypeApiKey :: Newtype ApiKey _
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
  { "RestApiId" :: Maybe String
  , "StageName" :: Maybe String
  }

stageKey :: StageKey
stageKey =
  { "RestApiId" : Nothing
  , "StageName" : Nothing
  }