module CloudFormation.AWS.SSM.Parameter where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::SSM::Parameter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-type
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-description
-- | - `Policies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-policies
-- | - `AllowedPattern`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-allowedpattern
-- | - `Tier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-tier
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-value
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-parameter.html#cfn-ssm-parameter-name
newtype Parameter = Parameter
  { "Type" :: String
  , "Value" :: String
  , "Description" :: Maybe String
  , "Policies" :: Maybe String
  , "AllowedPattern" :: Maybe String
  , "Tier" :: Maybe String
  , "Tags" :: Maybe CF.Json
  , "Name" :: Maybe String
  }

derive instance newtypeParameter :: Newtype Parameter _
instance resourceParameter :: Resource Parameter where type_ _ = "AWS::SSM::Parameter"

parameter :: { "Type" :: String, "Value" :: String } -> Parameter
parameter required = Parameter
  (merge required
    { "Description" : Nothing
    , "Policies" : Nothing
    , "AllowedPattern" : Nothing
    , "Tier" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    })