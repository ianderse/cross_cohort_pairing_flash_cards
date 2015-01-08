require 'rails_helper'

describe 'card set' do
  it 'is invalid without a name' do
    set = CardSet.create(name: nil)
    expect(set).to_not be_valid
  end

  it 'is valid with a name' do
    set = CardSet.create(name: 'Set 1')
    expect(set).to be_valid
  end
end
