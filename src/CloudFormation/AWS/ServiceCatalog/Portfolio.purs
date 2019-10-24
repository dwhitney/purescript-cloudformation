module CloudFormation.AWS.ServiceCatalog.Portfolio where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::ServiceCatalog::Portfolio`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolio.html-- |
-- | - `ProviderName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolio.html#cfn-servicecatalog-portfolio-providername
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolio.html#cfn-servicecatalog-portfolio-description
-- | - `DisplayName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolio.html#cfn-servicecatalog-portfolio-displayname
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolio.html#cfn-servicecatalog-portfolio-acceptlanguage
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolio.html#cfn-servicecatalog-portfolio-tags
type Portfolio =
  { "ProviderName" :: String
  , "DisplayName" :: String
  , "Description" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

portfolio :: { "ProviderName" :: String, "DisplayName" :: String } -> Portfolio
portfolio required =
  merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    , "Tags" : Nothing
    }