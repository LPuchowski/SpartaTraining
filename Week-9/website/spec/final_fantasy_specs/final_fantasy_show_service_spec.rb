require 'spec_helper'

describe 'FinalFantasyAPI' do

  before(:all) do
    @api_call = FinalFantasyAPI.new
    @random = @api_call.final_fantasy_show_service.get_random
  end

  context "basic data types" do

    it "should respond with a hash" do
      expect(@random).to be_kind_of Hash
    end

    it "should return an 'id' as a string" do
      expect(@random["id"]).to be_kind_of String
    end

    it "should return a 'name' as a string" do
      expect(@random["name"]).to be_kind_of String
    end

    it "should return a 'age' as a string" do
      expect(@random["age"]).to be_kind_of String
    end

    it "should return a 'gender' as a string" do
      expect(@random["gender"]).to be_kind_of String
    end

    it "should return a 'race' as a string" do
      expect(@random["race"]).to be_kind_of String
    end

    it "should return a 'job' as a string" do
      expect(@random["job"]).to be_kind_of String
    end

    it "should return a 'height' as a string" do
      expect(@random["height"]).to be_kind_of String
    end

    it "should return a 'weight' as a string" do
      expect(@random["weight"]).to be_kind_of String
    end

    it "should return a 'origin' as a string" do
      expect(@random["weight"]).to be_kind_of String
    end

    it "should return a 'description' as a string" do
      expect(@random["description"]).to be_kind_of String
    end

    it "should return a 'picture' as a string" do
      expect(@random["picture"]).to be_kind_of String
    end

    it "should return a 'hp' as null" do
      expect(@random["hp"]).to be_falsey
    end

  end

  context "length of entries" do

    it "should return 12 entries" do
      # expect(@random[0].class).to be Hash
      expect(@random.length).to eq 12
    end

    it "should have an 'id' length of 36 characters" do
      # expect(@random[0].class).to be Hash
      expect(@random["id"].length).to eq 36
    end

    it "should have an 'id' length of 36 characters" do
      # expect(@random[0].class).to be Hash
      expect(@random["id"].length).to eq 36
    end

    it "should have an 'age' length of 1-2 characters" do
      expect(@random["age"].length).to be_between(1,2)
    end

  end

  context "Include inside string"

  it "should have a gender value" do
    expect(@random["gender"]).to include("ale")
  end

  it "should contain 'Final Fantasy' in 'origin'" do
    expect(@random["origin"]).to include("Final Fantasy")
  end

  it "should have a 'picture' value containing a link to the moogleapi-images github repo" do
    expect(@random["picture"]).to start_with "https://jackfperryjr.github.io/moogleapi-images/"
  end

end
