require 'rails_helper'

RSpec.describe Search, type: :model do
  let(:search) { create(:search) }

  it "is valid with valid attributes" do
    expect(search).to be_valid
  end
end