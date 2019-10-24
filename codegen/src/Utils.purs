module Utils where

import Prelude

import Data.Either (Either(..))
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Exception (throw)


liftEither :: forall e a. Show e => Either e a -> Effect a
liftEither (Left e) = throw $ show e
liftEither (Right a) = pure a

liftMaybe :: forall a. String -> Maybe a -> Effect a
liftMaybe msg Nothing = throw msg
liftMaybe _ (Just a) = pure a
