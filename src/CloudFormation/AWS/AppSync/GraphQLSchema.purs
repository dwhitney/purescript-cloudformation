module CloudFormation.AWS.AppSync.GraphQLSchema where 

import Data.Maybe (Maybe(..))
import Record (merge)


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