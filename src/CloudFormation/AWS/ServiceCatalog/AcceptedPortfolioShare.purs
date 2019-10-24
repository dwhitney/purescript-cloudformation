module CloudFormation.AWS.ServiceCatalog.AcceptedPortfolioShare where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ServiceCatalog::AcceptedPortfolioShare`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-acceptedportfolioshare.html-- |
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-acceptedportfolioshare.html#cfn-servicecatalog-acceptedportfolioshare-acceptlanguage
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-acceptedportfolioshare.html#cfn-servicecatalog-acceptedportfolioshare-portfolioid
type AcceptedPortfolioShare =
  { "PortfolioId" :: String
  , "AcceptLanguage" :: Maybe String
  }

acceptedPortfolioShare :: { "PortfolioId" :: String } -> AcceptedPortfolioShare
acceptedPortfolioShare required =
  merge required
    { "AcceptLanguage" : Nothing
    }