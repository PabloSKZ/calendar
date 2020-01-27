require 'pry'
require_relative 'lib/user.rb'
require_relative 'lib/event.rb'
require_relative 'lib/eventCreator.rb'

pablo = User.new("pablo@blow.com", 26)
aziz = User.new("aziz@blow.com", 24)

bouffe = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
fete = Event.new("2020-05-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
rdv = Event.new("2020-01-27 15:15", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

evenement = EventCreator.new 

binding.pry
puts "end of file"