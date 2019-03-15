require 'spec_helper'

describe 'FinalFantasyAPI' do

  before(:all) do
    @api_call = FinalFantasyAPI.new
    @characters = @api_call.final_fantasy_index_service.get_all_characters
  end

  context "basic data types" do

    it "should respond with an array" do
      expect(@characters).to be_kind_of Array
    end

    it "should contain each character as a Hash" do
      expect(@characters[0].class).to be Hash
    end

  end

  context "number of characters" do

    it "should contain 216 characters" do
      expect(@characters.length).to eq 216
    end

  end

end
