module CloudFormation.AWS.ServiceCatalog.AcceptedPortfolioShare where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ServiceCatalog::AcceptedPortfolioShare`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-acceptedportfolioshare.html
-- |
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-acceptedportfolioshare.html#cfn-servicecatalog-acceptedportfolioshare-acceptlanguage
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-acceptedportfolioshare.html#cfn-servicecatalog-acceptedportfolioshare-portfolioid
newtype AcceptedPortfolioShare = AcceptedPortfolioShare
  { "PortfolioId" :: String
  , "AcceptLanguage" :: Maybe String
  }

derive instance newtypeAcceptedPortfolioShare :: Newtype AcceptedPortfolioShare _
instance resourceAcceptedPortfolioShare :: Resource AcceptedPortfolioShare where type_ _ = "AWS::ServiceCatalog::AcceptedPortfolioShare"

acceptedPortfolioShare :: { "PortfolioId" :: String } -> AcceptedPortfolioShare
acceptedPortfolioShare required = AcceptedPortfolioShare
  (merge required
    { "AcceptLanguage" : Nothing
    })