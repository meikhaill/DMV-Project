require_relative 'spec_helper'
require_relative '../lib/registrant' # Adjust the path as necessary

describe Registrant do
  before(:each) do
    @registrant = Registrant.new('John Doe',  25, false)
  end

  describe '#permit?' do
    it 'returns true if the registrant has a permit' do
      @registrant.earn_permit
      expect(@registrant.permit?).to be true
    end

    it 'returns false if the registrant does not have a permit' do
      expect(@registrant.permit?).to be false
    end
  end

  describe '#license_data' do 
    it 'returns license data when called on registrant' do
      expect(@registrant.license_data).to eq({:written=>false, :license=>false, :renewed=>false})
    end
  end
end