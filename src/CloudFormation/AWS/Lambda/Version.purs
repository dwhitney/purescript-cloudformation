module CloudFormation.AWS.Lambda.Version where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Lambda::Version`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html-- |
-- | - `CodeSha256`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-codesha256
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-description
-- | - `FunctionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-functionname
type Version =
  { "FunctionName" :: String
  , "CodeSha256" :: Maybe String
  , "Description" :: Maybe String
  }

version :: { "FunctionName" :: String } -> Version
version required =
  merge required
    { "CodeSha256" : Nothing
    , "Description" : Nothing
    }