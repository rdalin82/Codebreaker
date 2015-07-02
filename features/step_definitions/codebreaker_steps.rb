class Output
	def messages
		@messages ||= []
	end
	def puts(message)
		messages << message
	end

	def output
		@output ||= Output.new
	end 
end	


Given /^I am not yet playing$/ do 
end

When /^I start a new game$/ do 
	@messenger = StringIO.new
	#replace output with @messenger (use in each step)
	game = CodeBreaker::Game.new(@messenger)
	game.start('1234')
end

Given(/^the secret code is "([^"]*)"$/) do |secret|
	@messenger = StringIO.new
	game = CodeBreaker::Game.new(@messenger)
	game.start(secret)
end

When(/^I guess "([^"]*)"$/) do |guess|
	#@messenger = StringIO.new
	game = CodeBreaker::Game.new(@messenger)
	game.guess(guess)
end


Then(/^I should see "([^"]*)"$/) do |message|
	#@messenger = StringIO.new
	expect(@messenger.string).to include(message)
end