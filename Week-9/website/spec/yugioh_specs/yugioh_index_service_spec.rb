require 'spec_helper'

describe 'YuGiOhAPI' do

  before(:all) do
    @api_call = YuGiOhAPI.new
    @cards = @api_call.yugioh_index_service.get_all_cards
  end

  context "basic data types" do

    it "should respond with an array" do
      expect(@cards).to be_kind_of Array
    end

    it "should contain each card as a hash" do
      expect(@cards[0]).to be_kind_of Hash
    end

  end

  context "number of cards" do

    it "should contain  cards" do
    expect(@cards.length).to be 9869
    end
  end

end
