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


def readdoc(base, target, mode=:elinks)
  case mode
  when :elinks
    `cd #{base} && elinks --dump-width 120 --dump #{target}`
  when :cat
    `cd #{base} && cat #{target}`
  end
end

output = readdoc base, target, :elinks

if (redirect_target= output[/Refresh: \[1\](.*)$/, 1])
  puts target
  target = target.sub(%r!/[^/]*$!, '/' + redirect_target)
  puts "Redirecting to: #{target}"
end

final_output = readdoc base, target, :cat
puts final_output


__END__

./Cocoa/Reference/Foundation/Classes/NSArray_Class/index.html
   Refresh: [1]NSArray.html
