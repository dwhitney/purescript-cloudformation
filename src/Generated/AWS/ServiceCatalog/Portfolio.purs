module CloudFormation.AWS.ServiceCatalog.Portfolio where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ServiceCatalog::Portfolio`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolio.html
-- |
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
newtype Portfolio = Portfolio
  { "ProviderName" :: Value String
  , "DisplayName" :: Value String
  , "Description" :: Maybe (Value String)
  , "AcceptLanguage" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypePortfolio :: Newtype Portfolio _
derive newtype instance writePortfolio :: WriteForeign Portfolio
instance resourcePortfolio :: Resource Portfolio where type_ _ = "AWS::ServiceCatalog::Portfolio"

portfolio :: { "ProviderName" :: Value String, "DisplayName" :: Value String } -> Portfolio
portfolio required = Portfolio
  (merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    , "Tags" : Nothing
    })