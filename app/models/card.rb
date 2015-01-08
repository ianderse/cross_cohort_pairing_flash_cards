class Card < ActiveRecord::Base
  validates :question, :answer, presence: true
  belongs_to :card_set
end
