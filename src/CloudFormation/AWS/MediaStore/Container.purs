module CloudFormation.AWS.MediaStore.Container where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::MediaStore::Container`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediastore-container.html-- |
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
type Container =
  { "ContainerName" :: String
  , "Policy" :: Maybe String
  , "CorsPolicy" :: Maybe (Array CorsRule)
  , "LifecyclePolicy" :: Maybe String
  , "AccessLoggingEnabled" :: Maybe Boolean
  }

container :: { "ContainerName" :: String } -> Container
container required =
  merge required
    { "Policy" : Nothing
    , "CorsPolicy" : Nothing
    , "LifecyclePolicy" : Nothing
    , "AccessLoggingEnabled" : Nothing
    }

-- | `AWS::MediaStore::Container.CorsRule`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediastore-container-corsrule.html-- |
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
  { "AllowedMethods" :: Maybe (Array String)
  , "AllowedOrigins" :: Maybe (Array String)
  , "ExposeHeaders" :: Maybe (Array String)
  , "MaxAgeSeconds" :: Maybe Int
  , "AllowedHeaders" :: Maybe (Array String)
  }

corsRule :: CorsRule
corsRule =
  { "AllowedMethods" : Nothing
  , "AllowedOrigins" : Nothing
  , "ExposeHeaders" : Nothing
  , "MaxAgeSeconds" : Nothing
  , "AllowedHeaders" : Nothing
  }