module CloudFormation.AWS.MediaStore.Container where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::MediaStore::Container`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediastore-container.html
-- |
-- | - `Policy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediastore-container.html#cfn-mediastore-container-policy
-- | - `ContainerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediastore-container.html#cfn-mediastore-container-containername
-- | - `CorsPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediastore-container.html#cfn-mediastore-container-corspolicy
-- | - `LifecyclePolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediastore-container.html#cfn-mediastore-container-lifecyclepolicy
-- | - `AccessLoggingEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediastore-container.html#cfn-mediastore-container-accessloggingenabled
newtype Container = Container
  { "ContainerName" :: Value String
  , "Policy" :: Maybe (Value String)
  , "CorsPolicy" :: Maybe (Value (Array CorsRule))
  , "LifecyclePolicy" :: Maybe (Value String)
  , "AccessLoggingEnabled" :: Maybe (Value Boolean)
  }

derive instance newtypeContainer :: Newtype Container _
derive newtype instance writeContainer :: WriteForeign Container
instance resourceContainer :: Resource Container where type_ _ = "AWS::MediaStore::Container"

container :: { "ContainerName" :: Value String } -> Container
container required = Container
  (merge required
    { "Policy" : Nothing
    , "CorsPolicy" : Nothing
    , "LifecyclePolicy" : Nothing
    , "AccessLoggingEnabled" : Nothing
    })

-- | `AWS::MediaStore::Container.CorsRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html
-- |
-- | - `AllowedMethods`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-allowedmethods
-- | - `AllowedOrigins`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-allowedorigins
-- | - `ExposeHeaders`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-exposeheaders
-- | - `MaxAgeSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-maxageseconds
-- | - `AllowedHeaders`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html#cfn-mediastore-container-corsrule-allowedheaders
type CorsRule =
  { "AllowedMethods" :: Maybe (Value (Array String))
  , "AllowedOrigins" :: Maybe (Value (Array String))
  , "ExposeHeaders" :: Maybe (Value (Array String))
  , "MaxAgeSeconds" :: Maybe (Value Int)
  , "AllowedHeaders" :: Maybe (Value (Array String))
  }

corsRule :: CorsRule
corsRule =
  { "AllowedMethods" : Nothing
  , "AllowedOrigins" : Nothing
  , "ExposeHeaders" : Nothing
  , "MaxAgeSeconds" : Nothing
  , "AllowedHeaders" : Nothing
  }