#!/usr/bin/env ruby

require 'open-uri'

term = ARGV[0] || 'UISplitViewController'
base = '/Users/choi/Library/Developer/Shared/Documentation/DocSets/com.apple.adc.documentation.AppleiOS5_1.iOSLibrary.docset/Contents/Resources/Documents/documentation'

matches = open("|cd #{base} && find . -name 'index.html' -ipath '*#{term}*'").readlines

puts matches

#exec "open #{matches[0]}"

if matches.empty?
  puts "no matches"
  exit
end

target = matches[0]

#exec "cd #{base} && elinks #{target}"

output = `cd #{base} && elinks --dump #{target}`

if (redirect_target= output[/Refresh: \[1\](.*)$/, 1])
  puts target
  target = target.sub(%r!/[^/]*$!, '/' + redirect_target)
  puts "Redirecting to: #{target}"
  output = `cd #{base} && elinks --dump-width 120 --dump #{target}`

end
puts output


__END__

./Cocoa/Reference/Foundation/Classes/NSArray_Class/index.html
   Refresh: [1]NSArray.html
