module CloudFormation.AWS.ServiceCatalog.PortfolioShare where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "AccountId" :: Value String
  , "PortfolioId" :: Value String
  , "AcceptLanguage" :: Maybe (Value String)
  }

derive instance newtypePortfolioShare :: Newtype PortfolioShare _
derive newtype instance writePortfolioShare :: WriteForeign PortfolioShare
instance resourcePortfolioShare :: Resource PortfolioShare where type_ _ = "AWS::ServiceCatalog::PortfolioShare"

portfolioShare :: { "AccountId" :: Value String, "PortfolioId" :: Value String } -> PortfolioShare
portfolioShare required = PortfolioShare
  (merge required
    { "AcceptLanguage" : Nothing
    })