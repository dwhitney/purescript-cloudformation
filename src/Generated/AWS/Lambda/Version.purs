module CloudFormation.AWS.Lambda.Version where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Lambda::Version`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html
-- |
-- | - `CodeSha256`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-codesha256
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-description
-- | - `FunctionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-functionname
newtype Version = Version
  { "FunctionName" :: String
  , "CodeSha256" :: Maybe String
  , "Description" :: Maybe String
  }

derive instance newtypeVersion :: Newtype Version _
instance resourceVersion :: Resource Version where type_ _ = "AWS::Lambda::Version"

version :: { "FunctionName" :: String } -> Version
version required = Version
  (merge required
    { "CodeSha256" : Nothing
    , "Description" : Nothing
    })