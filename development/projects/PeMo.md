---
layout: page
title: PeMo
---

An XMPP Instant Messaging client [pontarius-xmpp](https://github.com/pontarius/pontarius-xmpp/) using [vty-ui](http://jtdaugherty.github.io/vty-ui/) as user interface. Includes support for Jabber.

**Language:** Haskell


***

__Installation__  
`$ cabal sandbox init`  
`$ cabal install`

* __Mac OSX:__ In order to install text-icu, you need the C libraries: icuuc, icui18n, icudata
  1. `$ brew install icu4c`
  2. `$ cabal install text-icu --extra-include-dirs=/usr/local/Cellar/icu4c/53.1/include/ --extra-lib-dirs=/usr/local/Cellar/icu4c/53.1/lib`
  
Or the equivalent using MacPorts.

__Usage__  
`$ cabal configure`  
`$ cabal run`
