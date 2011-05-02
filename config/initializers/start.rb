require 'rubygems'
require 'rufus/scheduler'

scheduler = Rufus::Scheduler.start_new

scheduler.every("30s") do
  page = Page.new
  page.valoare = 1
 if  page.save
	puts "DA"
 else
	page.error.full_messages
 end
end
