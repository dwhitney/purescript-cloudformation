module CloudFormation.AWS.AppSync.GraphQLSchema where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::AppSync::GraphQLSchema`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlschema.html
-- |
-- | - `Definition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlschema.html#cfn-appsync-graphqlschema-definition
-- | - `DefinitionS3Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlschema.html#cfn-appsync-graphqlschema-definitions3location
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlschema.html#cfn-appsync-graphqlschema-apiid
type GraphQLSchema =
  { "ApiId" :: String
  , "Definition" :: Maybe String
  , "DefinitionS3Location" :: Maybe String
  }

graphQLSchema :: { "ApiId" :: String } -> GraphQLSchema
graphQLSchema required =
  merge required
    { "Definition" : Nothing
    , "DefinitionS3Location" : Nothing
    }