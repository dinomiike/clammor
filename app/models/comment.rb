class Comment < ActiveRecord::Base
  # TODO Implement Comment associations. See comment_spec.rb for specification.
  belongs_to :user
  belongs_to :post

  # TODO Implement Comment validations. See comment_spec.rb for specification.
  validates :content, presence: true
end
