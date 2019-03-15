require 'spec_helper'

describe 'YuGiOhAPI' do

  before(:all) do
    @api_call = YuGiOhAPI.new
    @card = @api_call.yugioh_show_service.get_card "?name=limit_reverse"
  end

  context "check if keys exist" do

    it "should pass if 'atk' exists" do
      expect(@card[0][0].keys[3]).to eq "atk"
    end

    it "should pass if 'def' exists" do
      expect(@card[0][0].keys[4]).to eq "def"
    end

  end

  context "basic data types" do

    it "should respond with an array" do
      expect(@card[0]).to be_kind_of Array
    end

    it "should return the individual card as a hash" do
      expect(@card[0][0]).to be_kind_of Hash
    end

    it "should return 'id' as a string" do
      expect(@card[0][0]["id"]).to be_kind_of String
    end

    it "should return 'name' as a string" do
      expect(@card[0][0]["name"]).to be_kind_of String
    end

    it "should return 'type' as a string" do
      expect(@card[0][0]["type"]).to be_kind_of String
    end

    it "should return 'desc' as a string" do
      expect(@card[0][0]["desc"]).to be_kind_of String
    end

    it "should return 'level' as a string" do
      expect(@card[0][0]["level"]).to be_kind_of String
    end

    it "should return 'race' as a string" do
      expect(@card[0][0]["race"]).to be_kind_of String
    end

    it "should return 'attribute' as a string" do
      expect(@card[0][0]["attribute"]).to be_kind_of String
    end

    it "should return 'set_tag' as a string" do
      expect(@card[0][0]["set_tag"]).to be_kind_of String
    end

    it "should return 'setcode' as a string" do
      expect(@card[0][0]["setcode"]).to be_kind_of String
    end

    it "should return 'image_url' as a string" do
      expect(@card[0][0]["image_url"]).to be_kind_of String
    end

  end

  context "length of entries" do

    it "should return 20 entries" do
      expect(@card[0][0].length).to eq 20
    end

    it "should return 'level' between 0-12" do
      expect(@card[0][0]["level"]).to be_between("0","12")
    end

    it "should return 'level' between 0-12" do
      expect(@card[0][0]["level"]).to be_between("0","12")
    end

  end

  context "Include inside string" do

    it "should have a 'id' value consisting of only numbers" do
      expect(@card[0][0]["id"]).to be_between("0","9999999")
    end

    it "should have a 'image_url' value containing a link to the ygoprodeck.com website" do
      expect(@card[0][0]["image_url"]).to start_with "https://storage.googleapis.com/ygoprodeck.com/pics/"
    end

    it "should have a 'image_url_small' value containing a link to the ygoprodeck.com website" do
      expect(@card[0][0]["image_url_small"]).to start_with "https://storage.googleapis.com/ygoprodeck.com/pics_small"
    end

  end

end
