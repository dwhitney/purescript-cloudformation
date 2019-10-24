module CloudFormation.AWS.AppSync.GraphQLSchema where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::AppSync::GraphQLSchema`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlschema.html
-- |
-- | - `Definition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlschema.html#cfn-appsync-graphqlschema-definition
-- | - `DefinitionS3Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlschema.html#cfn-appsync-graphqlschema-definitions3location
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlschema.html#cfn-appsync-graphqlschema-apiid
newtype GraphQLSchema = GraphQLSchema
  { "ApiId" :: String
  , "Definition" :: Maybe String
  , "DefinitionS3Location" :: Maybe String
  }

derive instance newtypeGraphQLSchema :: Newtype GraphQLSchema _
instance resourceGraphQLSchema :: Resource GraphQLSchema where type_ _ = "AWS::AppSync::GraphQLSchema"

graphQLSchema :: { "ApiId" :: String } -> GraphQLSchema
graphQLSchema required = GraphQLSchema
  (merge required
    { "Definition" : Nothing
    , "DefinitionS3Location" : Nothing
    })