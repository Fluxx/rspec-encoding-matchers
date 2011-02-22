module RSpecEncodingMatchers
  extend RSpec::Matchers::DSL

  matcher :be_encoded_as do |expected|  
    match do |actual|
      actual.encoding == Encoding.find(expected.to_s)
    end
  end
  
  Encoding.list.each do |encoding|
    encoding.names.each do |name|
      
      matcher "be_#{name.gsub("-", "_").downcase}_encoded".to_sym do
        match { |actual| actual.encoding == encoding }
      end
      
    end
  end
  
end