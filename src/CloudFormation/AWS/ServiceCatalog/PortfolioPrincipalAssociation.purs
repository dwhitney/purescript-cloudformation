module CloudFormation.AWS.ServiceCatalog.PortfolioPrincipalAssociation where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ServiceCatalog::PortfolioPrincipalAssociation`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html-- |
-- | - `PrincipalARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-principalarn
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-acceptlanguage
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-portfolioid
-- | - `PrincipalType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-principaltype
type PortfolioPrincipalAssociation =
  { "PrincipalARN" :: String
  , "PortfolioId" :: String
  , "PrincipalType" :: String
  , "AcceptLanguage" :: Maybe String
  }

portfolioPrincipalAssociation :: { "PrincipalARN" :: String, "PortfolioId" :: String, "PrincipalType" :: String } -> PortfolioPrincipalAssociation
portfolioPrincipalAssociation required =
  merge required
    { "AcceptLanguage" : Nothing
    }