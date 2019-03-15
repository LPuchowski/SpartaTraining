require 'selenium-webdriver'

describe 'Testing the Sparta Global Registration Page' do

  before(:all) do
    @registration_service = SpartaRegistration.new
    @registration_service.visit_registration_site
    @data = DataGenerator.new
    @firstname = @data.firstname
    @lastname = @data.lastname
    @age = @data.get_age
    @date_of_birth = @data.get_birthday
    @degree = "Computer Science"
    @address = "gdf"
    @address2 = "dcdfvxc"
    @city = @data.get_city
    @postcode = "CV9 1DW"
    @email = @data.get_email
    @input = "qwertyuiop"
    @phone = @data.get_phone_number
    @linkedIn = "https://uk.linkedin.com/in/louis-puchowski-34912194"
    @file = "/Users/tech-a44/Documents/Week-9/website/app/public/images/final_fantasy_logo.jpg"
  end

  it "should land on the registration page" do
    expect(@registration_service.get_current_url).to eq @registration_service.registration_url
  end

  it "should accept first name" do
    @registration_service.input_first_name_field(@firstname)
    expect(@registration_service.get_first_name_field).to eq @firstname
  end

  it "should accept last name" do
    @registration_service.input_last_name_field(@lastname)
    expect(@registration_service.get_last_name_field).to eq @lastname
  end

  it "should accept age" do
    @registration_service.input_age(@age)
    expect(@registration_service.get_age).to eq @age.to_s
  end

  it "should accept date of birth" do
    @registration_service.input_date_of_birth(@date_of_birth)
    expect(@registration_service.get_date_of_birth).to eq @date_of_birth
  end

  it "should select a gender" do
    @registration_service.select_gender("Male")
    expect(@registration_service.is_gender_selected).to eq "Male"
  end

  it "should input degree" do
    @registration_service.input_degree(@degree)
    expect(@registration_service.get_degree).to eq @degree
  end

  it "should select a University" do
    @registration_service.select_university
    expect(@registration_service.is_a_university_selected).to eq "University of Roehampton"
  end

  it "should accept address*" do
    @registration_service.input_address(@address)
    expect(@registration_service.get_address).to eq @address
  end

  it "should accept address2" do
    @registration_service.input_address_2(@address2)
    expect(@registration_service.get_address_2).to eq @address2
  end

  it "should accept city" do
    @registration_service.input_city(@city)
    expect(@registration_service.get_city).to eq @city
  end

  it "should select a County" do
    @registration_service.select_county
    expect(@registration_service.is_county_selected).to be true
  end

  it "should input postcode" do
    @registration_service.input_postcode(@postcode)
    expect(@registration_service.get_postcode).to eq @postcode
  end

  it "should return input email" do
    @registration_service.input_email(@email)
    expect(@registration_service.get_input_email).to eq @email
  end

  it 'should return input skills' do
    @registration_service.input_skills(@input)
    expect(@registration_service.get_input_skills).to eq @input
  end

  it 'should return phone number' do
    @registration_service.input_phone_number(@phone)
    expect(@registration_service.get_input_phone_number).to eq @phone
  end

  it 'should return linkedIn URL' do
    @registration_service.input_linkedIn_URL(@linkedIn)
    expect(@registration_service.get_input_linkedIn_URL).to eq @linkedIn
  end

  it 'should be able to upload file' do
    @registration_service.input_upload_file
    expect(@registration_service.get_input_file).to be_truthy
  end

  it 'should accept SDET for stream' do
    @registration_service.input_SDET_stream
    expect(@registration_service.get_input_SDET_stream).to be true
  end

  it 'should accept DevOps for stream' do
    @registration_service.input_DevOps_stream
    expect(@registration_service.get_input_DevOps_stream).to be true
  end

  it 'should accept agree to terms and conditions' do
    @registration_service.input_terms_conditions
    expect(@registration_service.get_input_terms_conditions).to be_truthy
  end

  it 'should slide the experince from 0-100' do
    pending
  end

  it 'should sign in the application' do
    pending
  end

end
