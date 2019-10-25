module CloudFormation.AWS.AppSync.GraphQLSchema where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "ApiId" :: Value String
  , "Definition" :: Maybe (Value String)
  , "DefinitionS3Location" :: Maybe (Value String)
  }

derive instance newtypeGraphQLSchema :: Newtype GraphQLSchema _
derive newtype instance writeGraphQLSchema :: WriteForeign GraphQLSchema
instance resourceGraphQLSchema :: Resource GraphQLSchema where type_ _ = "AWS::AppSync::GraphQLSchema"

graphQLSchema :: { "ApiId" :: Value String } -> GraphQLSchema
graphQLSchema required = GraphQLSchema
  (merge required
    { "Definition" : Nothing
    , "DefinitionS3Location" : Nothing
    })