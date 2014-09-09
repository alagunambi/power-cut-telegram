#!/bin/ruby
# Script to check for power shutdown notifications in EB site and report to UDProducts telegram group.

# Libraries
require 'nokogiri'
require 'open-uri'

# Primary variables
source = "http://tneb.tnebnet.org/cpro/today.html"
area = "Velachery"

# Check for necessary executable
# exec('[ -f /bin/telegram-shell ] && echo "Telegram-shell found." || echo "Telegram-shell is Not Found at /bin :("')

# Scarpping source url 
doc = Nokogiri::HTML(open(source))

# Checking area name in scrapped web page and communicating information
if doc.text.match("/#{area}/i")
  puts "Power cut in #{area.to_s}"
  exec('telegram-shell UDProducts "Power cut in ' + area.to_s + ', please verify at ' + source.to_s + '"')
else
#  telegram-shell UDProducts "#{area}: No power cut today!"
  exec('telegram-shell UDProducts "' + area.to_s + ': No power cut today!"')
end

return 0
