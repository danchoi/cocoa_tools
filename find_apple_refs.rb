
require 'nokogiri'
file = ARGV.first
html = File.read(file)
doc = Nokogiri::XML(html)
doc.search('a[@name^="//apple_ref"]').each do |a|
  puts a.to_s
end
doc.search('a[@href^="#//apple_ref"]').each do |a|
  puts a.to_s
end
