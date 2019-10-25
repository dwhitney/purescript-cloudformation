module CloudFormation.AWS.Lambda.Version where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "FunctionName" :: Value String
  , "CodeSha256" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  }

derive instance newtypeVersion :: Newtype Version _
derive newtype instance writeVersion :: WriteForeign Version
instance resourceVersion :: Resource Version where type_ _ = "AWS::Lambda::Version"

version :: { "FunctionName" :: Value String } -> Version
version required = Version
  (merge required
    { "CodeSha256" : Nothing
    , "Description" : Nothing
    })