class Question < ActiveRecord::Base
  attr_accessible :name, :choices, :choices_attributes

  has_many :choices

  accepts_nested_attributes_for :choices
end
