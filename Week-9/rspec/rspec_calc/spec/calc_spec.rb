require 'spec_helper'

describe 'Testing basic calculator functions' do

  before(:each) do
    @calc = Calc.new
  end

  # add
  it "should add two numbers" do
    expect(@calc.add(7,4)).to eq 11
    expect(@calc.add(7,-4)).to eq 3
    expect(@calc.add(7,4)).to be_instance_of Integer
  end

  # subtract
  it "should subtract two numbers" do
    expect(@calc.subtract(5,2)).to eq 3
    expect(@calc.subtract(5,-5)).to eq 10
    expect(@calc.subtract(5,2)).to be_instance_of Integer
  end

  # multiply
  it "should multiply two numbers" do
    expect(@calc.multiply(2,20)).to eq 40
    expect(@calc.multiply(5,-5)).to eq -25
    expect(@calc.multiply(10,50)).to be_instance_of Integer
  end

  # divide
  it "should divide two numbers" do
    expect(@calc.divide(10,2)).to eq 5
    expect(@calc.divide(8,-4)).to eq -2
    expect(@calc.divide(70,35)).to be_instance_of Integer
  end

end
