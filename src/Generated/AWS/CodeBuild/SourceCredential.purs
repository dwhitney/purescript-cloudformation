module CloudFormation.AWS.CodeBuild.SourceCredential where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "ServerType" :: Value String
  , "Token" :: Value String
  , "AuthType" :: Value String
  , "Username" :: Maybe (Value String)
  }

derive instance newtypeSourceCredential :: Newtype SourceCredential _
derive newtype instance writeSourceCredential :: WriteForeign SourceCredential
instance resourceSourceCredential :: Resource SourceCredential where type_ _ = "AWS::CodeBuild::SourceCredential"

sourceCredential :: { "ServerType" :: Value String, "Token" :: Value String, "AuthType" :: Value String } -> SourceCredential
sourceCredential required = SourceCredential
  (merge required
    { "Username" : Nothing
    })