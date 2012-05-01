#!/usr/bin/env ruby

base = '/Users/choi/Library/Developer/Shared/Documentation/DocSets/com.apple.adc.documentation.AppleiOS5_1.iOSLibrary.docset/Contents/Resources/Documents/documentation'

puts "base dir: #{base}"
Dir.chdir(base) {
  files = IO.popen("find .", 'r') {|pipe| 
    pipe.read
  }
  puts files
}
