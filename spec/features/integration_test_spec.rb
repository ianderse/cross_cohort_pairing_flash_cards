require 'rails_helper'

describe 'authenticated user', type: :feature do
  include Capybara::DSL

  before do
    @set = CardSet.create(name: 'Set 1')
    @card_1 = @set.cards.create(question: 'Question', answer: 'Answer')
    @card_2 = @set.cards.create(question: 'Question 2', answer: 'Answer 2')
  end

  it 'visits /sets and sees a list of sets' do
    visit '/sets'

    expect(page).to have_content('List of Sets')
    expect(page).to have_content('Set 1')
  end

  it 'can visit an individual set and see list of cards' do
    visit '/sets'

    click_on('Set 1')
    expect(current_path).to eq(set_path(@set))
    expect(page).to have_content('List of Cards Belonging to Set 1')
    expect(page).to have_content('Question')
  end

  it 'can visit an individual card and see the question' do
    visit '/sets'

    click_on('Set 1')
    click_on('Question')

    expect(current_path).to eq(card_path(@card_1))
    expect(page).to have_content('Question')
    # expect(page).to have_css('#hidden-field')
    expect(page).to_not have_content('Answer')
  end
end
