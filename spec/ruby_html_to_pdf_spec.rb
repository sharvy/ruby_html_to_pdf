require 'spec_helper'

RSpec.describe RubyHtmlToPdf do
  describe 'initialization' do
    it "accepts URL as the source" do
      rhtp = RubyHtmlToPdf.new('http://google.com')
      
      expect(rhtp.source).to be_url
      expect(rhtp.source.to_s).to eq('http://google.com')
    end
  end
end
