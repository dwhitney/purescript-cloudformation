module CloudFormation.AWS.ServiceCatalog.PortfolioShare where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ServiceCatalog::PortfolioShare`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html-- |
-- | - `AccountId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html#cfn-servicecatalog-portfolioshare-accountid
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html#cfn-servicecatalog-portfolioshare-acceptlanguage
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html#cfn-servicecatalog-portfolioshare-portfolioid
type PortfolioShare =
  { "AccountId" :: String
  , "PortfolioId" :: String
  , "AcceptLanguage" :: Maybe String
  }

portfolioShare :: { "AccountId" :: String, "PortfolioId" :: String } -> PortfolioShare
portfolioShare required =
  merge required
    { "AcceptLanguage" : Nothing
    }