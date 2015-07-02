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
	#replace output with @messenger
	game = CodeBreaker::Game.new(@messenger)
	game.start
end

Given /^the secret code is "([^'']*)"$/ do [secret]
	game = Codebreaker::Game.new(output)
	game.start(secret)
end 