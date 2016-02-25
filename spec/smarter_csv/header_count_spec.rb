require 'spec_helper'

fixture_path = 'spec/fixtures'

describe 'be_able_to' do
  it 'calculate headers count with headers' do
    data = SmarterCSV.headers_count("#{fixture_path}/with_headers.csv")
    data.should == 6
  end
  it 'calculate headers count without' do
    data = SmarterCSV.headers_count("#{fixture_path}/no_header.csv")
    data.should == 4
  end
end
