class Question < ActiveRecord::Base
  attr_accessible :name, :choices, :choices_attributes

  has_many :choices

  accepts_nested_attributes_for :choices

  validate :validate_unique_choices

  def validate_unique_choices
    validate_uniqueness_of_in_memory(choices, [:name, :question_id], 'Choices must be unique.')
  end

end
