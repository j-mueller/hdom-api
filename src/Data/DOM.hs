{-# LANGUAGE AllowAmbiguousTypes    #-}
{-# LANGUAGE ExplicitForAll         #-}
{-# LANGUAGE FlexibleContexts       #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
{-# LANGUAGE OverloadedStrings      #-}
{-# LANGUAGE TypeFamilies           #-}
-- | Generic definition of dom nodes
module Data.DOM(
  DomNode(..)
  ) where

import           Data.Map.Strict (Map)
import           Data.String     (IsString (..))

-- | Simple language for constructing dom nodes.
-- i = type of identifiers (int, (), etc)
-- a = type of event handlers
class DomNode (node :: * -> * -> *) where
  type StringType node
  type NamespaceType node
  -- | Construct a node from an identifier, namespace, and node type
  node :: i -> NamespaceType node -> StringType node -> node a i
  -- | Lens for modifying the children of a node. NOTE: Due to the way the diffing
  -- algorithm is implemented in hdom-client, the "child elements" of a node
  -- can either be a single text node, or a list of nodes. This is different
  -- from most other vdom implementations, where the type of "child elements"
  -- is a list of either nodes or text nodes
  children :: forall f a i. Functor f => (Either (StringType node) [node a i] -> f (Either (StringType node) [node a i])) -> (node a i) -> f (node a i)
  -- | Lens for modifying the style attribute of a node.
  style :: forall f a i. Functor f => (Map (StringType node) (StringType node) -> f (Map (StringType node) (StringType node))) -> node a i -> f (node a i)
  -- | Lens for modifying the attributes of a node.
  attributes :: forall f a i. Functor f => (Map (StringType node) (StringType node) -> f (Map (StringType node) (StringType node))) -> node a i -> f (node a i)
  -- | Lens for modifying the click handler of a node. NOTE: "click" is currently the only event type we support, but that is going to change as soon as the other parts of the project are somewhat stable.
  onClick :: forall f a i. Functor f => (Maybe a -> f (Maybe a)) -> node a i -> f (node a i)
