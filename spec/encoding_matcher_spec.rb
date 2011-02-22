# encoding: UTF-8

require "spec_helper"

describe "#be_encoded_as" do

  it "matches encoding of strings with official names" do
    "hello".should be_encoded_as("UTF-8")
  end
  
  it "matches encoding of strings alised to the actual encoding" do
    "hello".should be_encoded_as("CP65001")
  end
  
  it "matches encodings found with symbols" do
    "hello".should be_encoded_as(:CP65001)
  end
    
end

Encoding.list.each do |encoding|
  encoding.names.each do |name|
    
    matcher_name = "be_#{name.gsub("-", "_").downcase}_encoded"
    
    describe "##{matcher_name}" do
      
      it "matches stings in the requested encoding" do
        "hello".encode(encoding).should send(matcher_name) unless encoding.dummy?
      end
      
    end
    
  end
end