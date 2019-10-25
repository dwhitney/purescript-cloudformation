module CloudFormation.AWS.SES.ConfigurationSet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SES::ConfigurationSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationset.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationset.html#cfn-ses-configurationset-name
newtype ConfigurationSet = ConfigurationSet
  { "Name" :: Maybe (Value String)
  }

derive instance newtypeConfigurationSet :: Newtype ConfigurationSet _
derive newtype instance writeConfigurationSet :: WriteForeign ConfigurationSet
instance resourceConfigurationSet :: Resource ConfigurationSet where type_ _ = "AWS::SES::ConfigurationSet"

configurationSet :: ConfigurationSet
configurationSet = ConfigurationSet
  { "Name" : Nothing
  }