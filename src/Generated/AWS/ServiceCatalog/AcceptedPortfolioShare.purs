module CloudFormation.AWS.ServiceCatalog.AcceptedPortfolioShare where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ServiceCatalog::AcceptedPortfolioShare`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-acceptedportfolioshare.html
-- |
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-acceptedportfolioshare.html#cfn-servicecatalog-acceptedportfolioshare-acceptlanguage
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-acceptedportfolioshare.html#cfn-servicecatalog-acceptedportfolioshare-portfolioid
newtype AcceptedPortfolioShare = AcceptedPortfolioShare
  { "PortfolioId" :: Value String
  , "AcceptLanguage" :: Maybe (Value String)
  }

derive instance newtypeAcceptedPortfolioShare :: Newtype AcceptedPortfolioShare _
derive newtype instance writeAcceptedPortfolioShare :: WriteForeign AcceptedPortfolioShare
instance resourceAcceptedPortfolioShare :: Resource AcceptedPortfolioShare where type_ _ = "AWS::ServiceCatalog::AcceptedPortfolioShare"

acceptedPortfolioShare :: { "PortfolioId" :: Value String } -> AcceptedPortfolioShare
acceptedPortfolioShare required = AcceptedPortfolioShare
  (merge required
    { "AcceptLanguage" : Nothing
    })