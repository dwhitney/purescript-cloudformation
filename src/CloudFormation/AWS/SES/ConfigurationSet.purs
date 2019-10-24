module CloudFormation.AWS.SES.ConfigurationSet where 

import Data.Maybe (Maybe(..))


-- | `AWS::SES::ConfigurationSet`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationset.html-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationset.html#cfn-ses-configurationset-name
type ConfigurationSet =
  { "Name" :: Maybe String
  }

configurationSet :: ConfigurationSet
configurationSet =
  { "Name" : Nothing
  }