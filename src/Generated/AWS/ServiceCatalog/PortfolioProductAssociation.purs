module CloudFormation.AWS.ServiceCatalog.PortfolioProductAssociation where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ServiceCatalog::PortfolioProductAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html
-- |
-- | - `SourcePortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-sourceportfolioid
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-acceptlanguage
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-portfolioid
-- | - `ProductId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-productid
newtype PortfolioProductAssociation = PortfolioProductAssociation
  { "PortfolioId" :: Value String
  , "ProductId" :: Value String
  , "SourcePortfolioId" :: Maybe (Value String)
  , "AcceptLanguage" :: Maybe (Value String)
  }

derive instance newtypePortfolioProductAssociation :: Newtype PortfolioProductAssociation _
derive newtype instance writePortfolioProductAssociation :: WriteForeign PortfolioProductAssociation
instance resourcePortfolioProductAssociation :: Resource PortfolioProductAssociation where type_ _ = "AWS::ServiceCatalog::PortfolioProductAssociation"

portfolioProductAssociation :: { "PortfolioId" :: Value String, "ProductId" :: Value String } -> PortfolioProductAssociation
portfolioProductAssociation required = PortfolioProductAssociation
  (merge required
    { "SourcePortfolioId" : Nothing
    , "AcceptLanguage" : Nothing
    })