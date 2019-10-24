module CloudFormation.AWS.CodeBuild.SourceCredential where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::CodeBuild::SourceCredential`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-sourcecredential.html
-- |
-- | - `ServerType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-sourcecredential.html#cfn-codebuild-sourcecredential-servertype
-- | - `Username`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-sourcecredential.html#cfn-codebuild-sourcecredential-username
-- | - `Token`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-sourcecredential.html#cfn-codebuild-sourcecredential-token
-- | - `AuthType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-sourcecredential.html#cfn-codebuild-sourcecredential-authtype
type SourceCredential =
  { "ServerType" :: String
  , "Token" :: String
  , "AuthType" :: String
  , "Username" :: Maybe String
  }

sourceCredential :: { "ServerType" :: String, "Token" :: String, "AuthType" :: String } -> SourceCredential
sourceCredential required =
  merge required
    { "Username" : Nothing
    }