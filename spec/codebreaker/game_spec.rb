require 'spec_helper'

module CodeBreaker
	describe Game do
		let(:output) { double('output').as_null_object }
		let(:game) { Game.new(output) }
		describe '#start' do 
			it 'sends a welcome message' do
				output = double('output').as_null_object
				game = Game.new(output)
				output.should_receive(:puts).with('Welcome to Codebreaker!')
				game.start()
			end 
			it 'prompts for the first guess' do
				output = double('output').as_null_object
				game = Game.new(output)
				output.should_receive(:puts).with('Enter guess:')
				game.start
			end
		end 
	end
end  
