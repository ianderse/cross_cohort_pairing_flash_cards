require 'rails_helper'

describe 'card' do
  it 'is invalid without a question' do
    card = Card.create(question: nil, answer: 'answer')
    expect(card).to_not be_valid
  end

  it 'is invalid without an answer' do
    card = Card.create(question: 'Question', answer: nil)
    expect(card).to_not be_valid
  end

  it 'is valid with a question and answer' do
    card = Card.create(question: 'Question', answer: 'Answer')
    expect(card).to be_valid
  end
end
