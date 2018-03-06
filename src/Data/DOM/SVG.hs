{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
module Data.DOM.SVG(
  -- * SVG elements
  svg_,
  title_,
  polyline_,
  line_,
  circle_,
  g_,
  text_,
  -- ** Construct new SVG elements
  svgNode
) where

import           Data.DOM
import           Data.String (IsString (..))

svgNode :: (DomNode node, IsString (NamespaceType node)) => StringType node -> node a ()
svgNode = node () "http://www.w3.org/2000/svg"

svg_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
svg_ = svgNode "svg"

title_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
title_ = svgNode "title"

polyline_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
polyline_ = svgNode "polyline"

line_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
line_ = svgNode "line"

circle_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
circle_ = svgNode "circle"

g_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
g_ = svgNode "g"

text_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
text_ = svgNode "text"
