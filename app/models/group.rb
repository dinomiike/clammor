class Group < ActiveRecord::Base
  # TODO Implement Group associations. See group_spec.rb for specification.
  belongs_to :user
  # TODO Implement Group validations. See group_spec.rb for specification.
  validates :name, presence: true, uniqueness: true
  validates :motto, presence: true
end
