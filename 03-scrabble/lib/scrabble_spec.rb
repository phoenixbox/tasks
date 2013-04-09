require "spec_helper"
require 'example'

describe "Scrabble" do
  it "scrabble class exists" do
    scrabble = Scrabble.new
    scrabble.score.should eq 3
  end
    
  
end