module CloudFormation.AWS.CodeBuild.SourceCredential where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
newtype SourceCredential = SourceCredential
  { "ServerType" :: String
  , "Token" :: String
  , "AuthType" :: String
  , "Username" :: Maybe String
  }

derive instance newtypeSourceCredential :: Newtype SourceCredential _
instance resourceSourceCredential :: Resource SourceCredential where type_ _ = "AWS::CodeBuild::SourceCredential"

sourceCredential :: { "ServerType" :: String, "Token" :: String, "AuthType" :: String } -> SourceCredential
sourceCredential required = SourceCredential
  (merge required
    { "Username" : Nothing
    })