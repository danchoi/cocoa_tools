#!/usr/bin/env ruby

require 'open-uri'

term = ARGV[0] || 'UISplitViewController'
base = '/Users/choi/Library/Developer/Shared/Documentation/DocSets/com.apple.adc.documentation.AppleiOS5_1.iOSLibrary.docset/Contents/Resources/Documents/documentation'

matches = open("|find '#{base}' -name 'index.html' -ipath '*#{term}*'").readlines

puts matches

exec "open #{matches[0]}"


