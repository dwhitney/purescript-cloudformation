module CloudFormation.AWS.ServiceCatalog.PortfolioShare where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ServiceCatalog::PortfolioShare`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html
-- |
-- | - `AccountId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html#cfn-servicecatalog-portfolioshare-accountid
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html#cfn-servicecatalog-portfolioshare-acceptlanguage
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html#cfn-servicecatalog-portfolioshare-portfolioid
newtype PortfolioShare = PortfolioShare
  { "AccountId" :: String
  , "PortfolioId" :: String
  , "AcceptLanguage" :: Maybe String
  }

derive instance newtypePortfolioShare :: Newtype PortfolioShare _
instance resourcePortfolioShare :: Resource PortfolioShare where type_ _ = "AWS::ServiceCatalog::PortfolioShare"

portfolioShare :: { "AccountId" :: String, "PortfolioId" :: String } -> PortfolioShare
portfolioShare required = PortfolioShare
  (merge required
    { "AcceptLanguage" : Nothing
    })