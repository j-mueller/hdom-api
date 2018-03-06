{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
module Data.DOM.HTML(
  -- * Content Sectioning
  address_,
  article_,
  footer_,
  header_,
  h1_,
  h2_,
  h3_,
  h4_,
  h5_,
  h6_,
  hgroup_,
  nav_,
  section_,
  -- * Text content
  dd_,
  div_,
  dl_,
  dt_,
  figcaption_,
  figure_,
  hr_,
  li_,
  main_,
  ol_,
  p_,
  pre_,
  ul_,
  -- * Inline text semantics
  a_,
  abbr_,
  b_,
  bdi_,
  bdo_,
  br_,
  cite_,
  code_,
  data_,
  dfn_,
  em_,
  i_,
  kbd_,
  mark_,
  q_,
  rp_,
  rt_,
  rtc_,
  ruby_,
  s_,
  samp_,
  small_,
  span_,
  strong_,
  sub_,
  sup_,
  time_,
  u_,
  var_,
  wbr_,
  -- * Image and multimedia
  area_,
  audio_,
  img_,
  map_,
  track_,
  video_,
  -- * Embedded content
  embed_,
  object_,
  param_,
  source_,
  -- * Scripting
  canvas_,
  noscript_,
  script_,
  -- * Demarcating edits
  del_,
  ins_,
  -- * Table content
  caption_,
  col_,
  colgroup_,
  table_,
  tbody_,
  td_,
  tfoot_,
  th_,
  thead_,
  tr_,
  -- * Forms
  button_,
  datalist_,
  fieldset_,
  form_,
  input_,
  keygen_,
  label_,
  legend_,
  meter_,
  optgroup_,
  option_,
  output_,
  progress_,
  select_,
  -- * Interactive elements
  details_,
  dialog_,
  menu_,
  menuitem_,
  summary_,
  -- * Web components
  content_,
  element_,
  shadow_,
  template_,
  -- ** Misc.
  htmlNode
) where

import           Data.DOM
import           Data.String (IsString (..))

---------------------
-- html node constructors
--------------------

htmlNode :: (DomNode node, IsString (NamespaceType node)) => StringType node -> node a ()
htmlNode = node () "http://www.w3.org/1999/xhtml"

address_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
address_ = htmlNode "address"

article_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
article_ = htmlNode "article"

footer_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
footer_ = htmlNode "footer"

header_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
header_ = htmlNode "header"

h1_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
h1_ = htmlNode "h1"

h2_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
h2_ = htmlNode "h2"

h3_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
h3_ = htmlNode "h3"

h4_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
h4_ = htmlNode "h4"

h5_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
h5_ = htmlNode "h5"

h6_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
h6_ = htmlNode "h6"

hgroup_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
hgroup_ = htmlNode "hgroup"

nav_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
nav_ = htmlNode "nav"

section_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
section_ = htmlNode "section"

dd_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
dd_ = htmlNode "dd"

div_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
div_ = htmlNode "div"

dl_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
dl_ = htmlNode "dl"

dt_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
dt_ = htmlNode "dt"

figcaption_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
figcaption_ = htmlNode "figcaption"

figure_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
figure_ = htmlNode "figure"

hr_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
hr_ = htmlNode "hr"

li_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
li_ = htmlNode "li"

main_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
main_ = htmlNode "main"

ol_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
ol_ = htmlNode "ol"

p_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
p_ = htmlNode "p"

pre_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
pre_ = htmlNode "pre"

ul_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
ul_ = htmlNode "ul"

a_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
a_ = htmlNode "a"

abbr_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
abbr_ = htmlNode "abbr"

b_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
b_ = htmlNode "b"

bdi_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
bdi_ = htmlNode "bdi"

bdo_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
bdo_ = htmlNode "bdo"

br_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
br_ = htmlNode "br"

cite_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
cite_ = htmlNode "cite"

code_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
code_ = htmlNode "code"

data_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
data_ = htmlNode "data"

dfn_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
dfn_ = htmlNode "dfn"

em_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
em_ = htmlNode "em"

i_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
i_ = htmlNode "i"

kbd_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
kbd_ = htmlNode "kbd"

mark_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
mark_ = htmlNode "mark"

q_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
q_ = htmlNode "q"

rp_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
rp_ = htmlNode "rb"

rt_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
rt_ = htmlNode "rt"

rtc_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
rtc_ = htmlNode "rtc"

ruby_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
ruby_ = htmlNode "ruby"

s_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
s_ = htmlNode "s"

samp_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
samp_ = htmlNode "samp"

small_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
small_ = htmlNode "small"

span_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
span_ = htmlNode "span"

strong_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
strong_ = htmlNode "strong"

sub_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
sub_ = htmlNode "sub"

sup_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
sup_ = htmlNode "sup"

time_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
time_ = htmlNode "time"

u_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
u_ = htmlNode "u"

var_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
var_ = htmlNode "var"

wbr_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
wbr_ = htmlNode "wbr"

area_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
area_ = htmlNode "area"

audio_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
audio_ = htmlNode "audio"

img_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
img_ = htmlNode "img"

map_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
map_ = htmlNode "map"

track_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
track_ = htmlNode "track"

video_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
video_ = htmlNode "video"

embed_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
embed_ = htmlNode "embed"

object_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
object_ = htmlNode "object"

param_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
param_ = htmlNode "param"

source_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
source_ = htmlNode "source"

canvas_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
canvas_ = htmlNode "canvas"

noscript_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
noscript_ = htmlNode "noscript"

script_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
script_ = htmlNode "script"

del_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
del_ = htmlNode "del"

ins_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
ins_ = htmlNode "ins"

caption_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
caption_ = htmlNode "caption"

col_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
col_ = htmlNode "col"

colgroup_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
colgroup_ = htmlNode "colgroup"

table_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
table_ = htmlNode "table"

tbody_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
tbody_ = htmlNode "tbody"

td_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
td_ = htmlNode "td"

tfoot_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
tfoot_ = htmlNode "tfoot"

th_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
th_ = htmlNode "th"

thead_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
thead_ = htmlNode "thead"

tr_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
tr_ = htmlNode "tr"

button_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
button_ = htmlNode "button"

datalist_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
datalist_ = htmlNode "datalist"

fieldset_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
fieldset_ = htmlNode "fieldset"

form_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
form_ = htmlNode "form"

input_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
input_ = htmlNode "input"

keygen_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
keygen_ = htmlNode "keygen"

label_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
label_ = htmlNode "label"

legend_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
legend_ = htmlNode "legend"

meter_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
meter_ = htmlNode "meter"

optgroup_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
optgroup_ = htmlNode "optgroup"

option_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
option_ = htmlNode "option"

output_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
output_ = htmlNode "output"

progress_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
progress_ = htmlNode "progress"

select_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
select_ = htmlNode "select"

details_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
details_ = htmlNode "details"

dialog_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
dialog_ = htmlNode "dialog"

menu_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
menu_ = htmlNode "menu"

menuitem_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
menuitem_ = htmlNode "menuitem"

summary_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
summary_ = htmlNode "summary"

content_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
content_ = htmlNode "content"

element_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
element_ = htmlNode "element"

shadow_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
shadow_ = htmlNode "shadow"

template_ :: (DomNode node, IsString (StringType node), IsString (NamespaceType node)) => node a ()
template_ = htmlNode "template"
